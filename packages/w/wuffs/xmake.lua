
---@diagnostic disable
-- stylua: ignore start

package("wuffs")
    add_urls("https://github.com/weqeqq/wuffs.git")
    add_versions("0.4.0", "2511f40290a57d437af9ae6136370954a1ac270c")

    on_install(function (package)
        io.writefile("xmake.lua", [[
            add_rules("mode.release")
            target("wuffs")
                set_kind("static")
                set_languages("c99")
                add_files("release/c/wuffs-v0.4.c")
                add_defines("WUFFS_IMPLEMENTATION")
                add_headerfiles("release/c/(wuffs.h)")
                add_headerfiles("release/c/(wuffs-v0.4.c)")
        ]])
        import("package.tools.xmake").install(package)
    end)
package_end()
