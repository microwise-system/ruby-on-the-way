### vagrant

vagrant 是一个虚拟机管理工具，他本省不提供虚拟化技术，需要依赖 virtualbox 或者 vmware.

安装 vagrant 需要先安装 virtualbox 或者 vmvware.

安装好后可以

```
# 下载 ubuntu 14.04
如果网速不行可以先下载镜像(下面有链接)，再添加, 推荐此方法
vagrant box add ubuntu-14.04-amd64-vbox.box --name ubuntu/trusty64
# 如果网速可以在线下载
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

###  镜像分享下载

* [ubuntu-14.04](http://pan.baidu.com/s/1c0q591Q)(virtualbox 64bit)

### 同步目录

有时候想在宿主机用自己喜欢的工具做项目开发，虚拟机测试执行，可以通过**同步目录** 方式进行。
在任意一边做修改对另一边都是可见的。

编辑 Vagrantfile, 添加下面配置。 讲本机项目`my-project`映射到虚拟机`/home/vagrant/my-project`下。

```ruby
config.vm.synced_folder "c:/my-project", "/home/vagrant/my-project"
```

### 端口映射

将虚拟机的端口暴露到主机，然后可以通过主机访问。
例如将虚拟机的80端口映射到宿主机8080端口，在宿主机访问 localhost:8080 即可访问虚拟机 80 端口。
```ruby
# Vagrantfile
config.vm.network :forwarded_port, guest: 80, host: 8080
```

### 虚拟机访问宿主机

在虚拟机中执行 `netstat -rn`, 找到**Gateway**, 例如 `10.0.2.2`, 通过 10.0.2.2 可以访问宿主机。
```
Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
0.0.0.0         10.0.2.2        0.0.0.0         UG        0 0          0 eth0
0.0.0.0         10.0.2.2        0.0.0.0         UG        0 0          0 eth0
10.0.2.0        0.0.0.0         255.255.255.0   U         0 0          0 eth0
10.0.3.0        0.0.0.0         255.255.255.0   U         0 0          0 lxcbr0
172.17.0.0      0.0.0.0         255.255.0.0     U         0 0          0 docker0
```
