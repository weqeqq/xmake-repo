
---@diagnostic disable
-- stylua: ignore start

package("weqeqq.image")
    set_homepage("https://github.com/weqeqq/wqimage")

    add_urls("https://github.com/weqeqq/wqimage.git")
    add_versions("0.3.0", "v0.3.0")
    add_versions("0.3.1", "v0.3.1")

    add_configs("io",
        {description = "Build the io component (PNG + AVIF decode/encode)",
         default = true, type = "boolean"})
    add_configs("processing",
        {description = "Build the processing component (blend/adjust/crop)",
         default = true, type = "boolean"})
    add_configs("simd",
        {description = "Enable Highway SIMD in the processing component",
         default = true, type = "boolean"})

    add_deps("weqeqq.color", "weqeqq.error", "weqeqq.parallel")

    add_components("core")

    on_component("core", function (package, component)
        component:add("links", "weqeqq.image")
    end)
    on_component("io", function (package, component)
        component:add("links", "weqeqq.image.io")
    end)
    on_component("processing", function (package, component)
        component:add("links", "weqeqq.image.processing")
    end)

    on_load(function (package)
        if package:config("io") then
            package:add("deps", "weqeqq.png", "weqeqq.avif")
            package:add("components", "io", {deps = "core"})
        end
        if package:config("processing") then
            package:add("components", "processing", {deps = "core"})
            if package:config("simd") then
                package:add("deps", "highway")
            end
        end
    end)

    on_install(function (package)
        local configs = {}
        configs.io = package:config("io")
        configs.processing = package:config("processing")
        configs.simd = package:config("simd")
        import("package.tools.xmake").install(package, configs)
    end)
