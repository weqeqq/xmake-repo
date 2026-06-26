
---@diagnostic disable
-- stylua: ignore start

package("weqeqq.color")
    add_urls("https://github.com/weqeqq/wqcolor.git")
    add_versions("0.1.0", "v0.1.0")

    add_deps("weqeqq.parallel")

    on_install(function(package)
	      import("package.tools.xmake").install(package)
    end)
package_end()
