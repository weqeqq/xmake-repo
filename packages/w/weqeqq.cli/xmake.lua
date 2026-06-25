---@diagnostic disable
-- stylua: ignore start

package("weqeqq.cli")
  add_urls("https://github.com/weqeqq/wqcli.git")
  add_versions("0.1.0", "v0.1.0")

  add_deps("weqeqq.terminal 0.2.3")

  on_install(function(package)
	  import("package.tools.xmake").install(package)
  end)
package_end()
