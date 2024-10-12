@echo OFF
set netname="WLAN 2"
set ip=10.14.10.247
set subnetmask=255.255.255.0
set gateway=10.14.10.1
set dns1=10.0.6.101
set dns2=10.0.6.102
@netsh interface ip set address name=%netname% source=static addr=%ip% mask=%subnetmask% gateway=%gateway% gwmetric=1
@netsh interface ip set dns name=%netname% source=static addr=%dns1% primary validate=no
@netsh interface ip add dns name=%netname% addr=%dns2% index=2 validate=no
:: PAUSE
:: netnameΪ��Ҫ���õ��������ӵ����ƣ���ϵͳ�����������á�������Ϊ׼���硱�������ӡ�WLAN���ȡ�
:: ip��Ϊ����Ҫ���õ�IP��
:: subnetmaskΪ�������룬ͨ����255.255.255.0��
:: gateway��Ϊ������ص�ַ��
:: dns1Ϊ��ѡDNS��dns2Ϊ����DNS��
:: source=staticΪ�ֹ�����IP��DNS��ַ��