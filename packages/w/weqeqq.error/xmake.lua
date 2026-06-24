---@diagnostic disable
-- stylua: ignore start

package("weqeqq.error")
  add_urls("https://github.com/weqeqq/wqerror.git")
  add_versions("0.1.0", "e82887e70e2199e18570c2747b6ed6f95e74bb22")
  add_versions("0.1.1", "227d2be5478417dbae721d99fefa7e9fdb66466a")

  on_install(function(package)
	  import("package.tools.xmake").install(package)
  end)
package_end()
