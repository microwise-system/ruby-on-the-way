### vagrant

vagrant 是一个虚拟机管理工具，他本省不提供虚拟化技术，需要依赖 virtualbox 或者 vmware.

安装 vagrant 需要先安装 virtualbox 或者 vmvware.

安装好后可以

```
# 下载 ubuntu 14.04
vagrant box add ubuntu/trusty64

# 查看已经下载的 box
vagrant box list

mkdir trusty64
cd trusty64

# 初始化一个实例
vagrant init ubuntu/trust64
# 启动实例
vagrant up
# 登进跑起来的虚拟机
# 如果是 windows 不能直接 使用此命令，需要手动 ssh(putty), 用户名 vagrant, 密码 vagrant
vagrant ssh
# 停止虚拟机
vagrant halt
```
