---@diagnostic disable
-- stylua: ignore start

package("weqeqq.terminal")
  add_urls("https://github.com/weqeqq/wqterminal.git")
  add_versions("0.1.0", "56c673dc3903e332bf5b127ab9ea59747bee748b")

  on_install(function(package)
	  import("package.tools.xmake").install(package)
  end)
package_end()
