
---@diagnostic disable
-- stylua: ignore start

package("weqeqq.file")
    add_urls("https://github.com/weqeqq/wqfile.git")
    add_versions("c03e10a", "c03e10a7b4b4b71a49ffa30994738a78a6f4d3cb")
    add_versions("0.1.0", "v0.1.0")

    on_install(function (package)
        import("package.tools.xmake").install(package)
    end)
package_end()
