@echo OFF
set netname="WLAN 2"
set dns1=8.8.8.8
set dns2=114.114.114.114
@netsh interface ip set address name=%netname% source=dhcp
@netsh interface ip set dns name=%netname% source=static addr=%dns1% primary validate=no
@netsh interface ip add dns name=%netname% addr=%dns2% index=2 validate=no
:: @netsh interface ip set dns name=%netname% source=dhcp
:: PAUSE
:: netnameΪ��Ҫ���õ��������ӵ����ƣ���ϵͳ�����������á�������Ϊ׼���硱�������ӡ�WLAN���ȡ�
:: source=dhcpΪ�Զ����IP��DNS��ַ��