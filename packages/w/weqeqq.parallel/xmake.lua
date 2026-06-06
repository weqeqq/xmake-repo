
package("weqeqq.parallel")
  add_urls("https://github.com/weqeqq/wqparallel.git")
  add_versions("57c0c0e", "57c0c0e8cccd9dce1d7a5c60a514489e5b2f065f")

  on_install(function (package)
    import("package.tools.xmake").install(package)
  end)
package_end()
