package("weqeqq.unicode")
  add_urls("https://github.com/weqeqq/wqunicode.git")
  add_versions("44eedb2", "44eedb2264555310642eb9fcc423cef6b4549b63")

  on_install(function (package)
    import("package.tools.xmake").install(package)
  end)
package_end()
