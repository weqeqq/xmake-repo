
---@diagnostic disable
-- stylua: ignore start

package("weqeqq.png")
    add_urls("https://github.com/weqeqq/wqpng.git")
    add_versions("0.1.0", "v0.1.0")

    add_deps("weqeqq.error ~0.2.0")
    add_deps("weqeqq.wuffs ~0.4.0")
    add_deps("fpng")
    add_deps("weqeqq.color ~0.1.0")
    add_deps("weqeqq.parallel")

    on_install(function(package)
	    import("package.tools.xmake").install(package)
    end)
package_end()
