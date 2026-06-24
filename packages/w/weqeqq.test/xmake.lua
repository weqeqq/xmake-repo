---@diagnostic disable
-- stylua: ignore start

package("weqeqq.test")
  add_urls("https://github.com/weqeqq/wqtest.git")
  add_versions("0.1.0", "3052482e29240a32ec6063a0958434ce7d439299")
  add_versions("0.2.0", "bf2cbf4d11165cf97e38d2be389a4ad366ac43d2")

  add_components("core", { default = true })
  add_components("main")

  on_install(function(package)
	  import("package.tools.xmake").install(package)
  end)

  on_component(function (package, component) 
    local name = component:name() 
    if name == "core" then 
      component:add("links", "weqeqq.test")
    elseif name == "main" then 
      component:add("links", "weqeqq.test.main")
      component:add("deps", "core")
    end
  end)
package_end()
