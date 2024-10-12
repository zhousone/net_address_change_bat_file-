@echo OFF
set netname="WLAN 2"
set ip=192.168.1.178
set subnetmask=255.255.255.0
set gateway=192.168.1.1
:: set dns1=
:: set dns2=http://XXX.XXX.XXX.XXX
@netsh interface ip set address name=%netname% source=static addr=%ip% mask=%subnetmask% gateway=%gateway% gwmetric=1
:: @netsh interface ip set dns name=%netname% source=static addr=%dns1% primary
:: @netsh interface ip add dns name=%netname% addr=% dns2% index=2
:: PAUSE
:: netname为需要设置的网络连接的名称，以系统“适配器设置”的名称为准，如”本地连接、WLAN“等。
:: ip改为你想要设置的IP。
:: subnetmask为子网掩码，通常是255.255.255.0。
:: gateway改为你的网关地址。
:: dns1为首选DNS，dns2为备用DNS。
:: source=static为手工输入IP或DNS地址。