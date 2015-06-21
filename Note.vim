[ 2015 / 06 / 21 ]
Keyword : adduser, user, root, debian 

Debian 預設是沒有sudo 的, 記得裝
# apt-get install sudo
然後編輯 /etc/sudoers 
之後加上
# 格式筆記
# 帳號 來源主機 = ( 可切換為 ) 	可執行
  user ALL	= (ALL) 	ALL
  root ALL	= (ALL) 	ALL

實際執行時, 會一直多出

sudo: unable to resolve host dev

這樣的警告, 雖然可以正常work 
不過一直跳出警告實在很雜毛
修復方法 : 編輯 /etc/hosts
在localhost 那邊加上自己的主機名稱即可
ex:
127.0.0.1 localhost
127.0.0.1 csie

= = = = = = sudoers = = = = = = =

$ cat /etc/sudoers

# /etc/sudoers
#
#
# See the man page for details on how to write a sudoers file.
# Defaults    env_reset
# Host alias specification
# User alias specification
# Cmnd alias specification
# User privilege specification

UserName	ALL=(ALL) ALL
root    	ALL=(ALL) ALL

# Allow members of group sudo to execute any command after they have
# provided their password
# (Note that later entries override this, so you might need to move
# it further down)

%sudo ALL=(ALL) ALL

#
#includedir /etc/sudoers.d
# Members of the admin group may gain root privileges

%admin ALL=(ALL) ALL

= = = = = = hosts  = = = = = = = =

$ cat /etc/hosts

127.0.0.1	localhost
127.0.0.1	debian

::1		localhost ip6-localhost ip6-loopback
fe00::0		ip6-localnet
ff00::0		ip6-mcastprefix
ff02::1		ip6-allnodes
ff02::2		ip6-allrouters

