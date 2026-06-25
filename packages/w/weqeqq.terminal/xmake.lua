---@diagnostic disable
-- stylua: ignore start

package("weqeqq.terminal")
  add_urls("https://github.com/weqeqq/wqterminal.git")
  add_versions("0.1.0", "56c673dc3903e332bf5b127ab9ea59747bee748b")
  add_versions("0.2.0", "v0.2.0")
  add_versions("0.2.1", "v0.2.1")
  add_versions("0.2.2", "v0.2.2")
  add_versions("0.2.3", "v0.2.3")
  add_versions("0.2.4", "v0.2.4")

  on_install(function(package)
	  import("package.tools.xmake").install(package)
  end)
package_end()
