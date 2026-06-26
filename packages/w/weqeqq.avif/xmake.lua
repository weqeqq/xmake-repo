
---@diagnostic disable
-- stylua: ignore start

package("weqeqq.avif")
    add_urls("https://github.com/weqeqq/wqavif.git")
    add_versions("0.1.0", "v0.1.0")

    add_deps("weqeqq.error ~0.2.0")
    add_deps("weqeqq.color ~0.1.0")
    add_deps("weqeqq.parallel")
    add_deps("libavif", { configs = { aom = true, dav1d = true, svt_av1 = true } })

    on_install(function(package)
	    import("package.tools.xmake").install(package)
    end)
package_end()
