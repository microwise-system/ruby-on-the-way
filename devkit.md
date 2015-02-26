### 安装 DevKit

_做 ruby 开发强烈建议使用 linux/osx_

windows 需要安装 [DevKit](http://rubyinstaller.org/add-ons/devkit/) 其他平台不需要。

安装步骤, 具体参考[官方文档](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit):

* 已经安装 ruby
* 根据已安装的ruby版本下载 DevKit, [下载链接](http://rubyinstaller.org/downloads/)
* 双击解压，并选择解压目录，比如 `c:/devkit/`
* 命令行进入 `c:/devkit/`
* ruby dk.rb init
* ruby dk.rb review

  检查是否显示本机已安转的ruby根目录.
  如果没有显示，则需要手动配置 config.yml, 如

```yml
---
- c:/Ruby-21/
```

* ruby dk.rb install

测试DevKit安装是否成功

    gem install json --platform=ruby
