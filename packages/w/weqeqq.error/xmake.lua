
---@diagnostic disable
-- stylua: ignore start

package("weqeqq.error")
    add_urls("https://github.com/weqeqq/wqerror.git")
    add_versions("0.1.0", "e82887e70e2199e18570c2747b6ed6f95e74bb22")
    add_versions("0.1.1", "227d2be5478417dbae721d99fefa7e9fdb66466a")
    add_versions("0.2.0", "v0.2.0")


    if is_plat("macosx", "iphoneos") then
        add_syslinks("c++experimental")
    elseif not is_plat("windows") then
        add_syslinks("stdc++exp")
    end

    on_load(function (package)
      local version = package:version()

      if version and version:ge("0.2.0") then 
        package:add("deps", "weqeqq.terminal ~0.2.4")
      end
    end) 

    on_install(function(package)
	    import("package.tools.xmake").install(package)
    end)
package_end()
