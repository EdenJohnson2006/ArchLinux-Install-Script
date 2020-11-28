# ArchLinux-Install-Script
旨在方便，快速，直观的安装ArchLinux及GUI等附加组件。

本人真正意义上的第一个开源项目（可能）

实现K.I.S（Keep It Stupid）（确信）

适合于VM安装，Linux小白，暴 力 传 教 人 士，经常rm -rf / 的人（比如本人）

希望实现的目标：
# 一、Script编写
## （一）、Live CD环境
1. 检测当前ISO启动方式（通过``` ls /sys/firmware/efi/efivars/ ``` 实现）

2. 自动根据磁盘大小分区
  
    - 根据输入为各分区设置挂载点

3. 自动根据启动方式挂载分区到```/mnt```下正确路径

4. 自动执行pacstrap，生成fstab

   - 根据输入安装LTS内核 
   > [@nVidia](https://www.archlinux.org/news/nvidia-45528-is-incompatible-with-linux-59/)
5. Live CD 环境文件修改
    - 根据输入修改locale.gen
    - 创建主机名文件```/etc/hostname```
