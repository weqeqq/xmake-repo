package("weqeqq.error")
  add_urls("https://github.com/weqeqq/wqerror.git")
  add_versions("cf7c58b", "e82887e70e2199e18570c2747b6ed6f95e74bb22")

  on_install(function (package)
    import("package.tools.xmake").install(package)
  end)
package_end()
