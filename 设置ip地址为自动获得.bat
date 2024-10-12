@echo OFF
set netname="WLAN 2"
set dns1=8.8.8.8
set dns2=114.114.114.114
@netsh interface ip set address name=%netname% source=dhcp
@netsh interface ip set dns name=%netname% source=static addr=%dns1% primary validate=no
@netsh interface ip add dns name=%netname% addr=%dns2% index=2 validate=no
:: @netsh interface ip set dns name=%netname% source=dhcp
:: PAUSE
:: netname为需要设置的网络连接的名称，以系统“适配器设置”的名称为准，如”本地连接、WLAN“等。
:: source=dhcp为自动获得IP或DNS地址。