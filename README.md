TLibC
======
**C���Գ��ú�����**

�����ֻ�зǳ��ٵ������ �����ṩ�˶Ժܶ��ָ�ʽ���ݵĴ����ܣ� �������ż��ѵ����ܡ�

- platform ��ƽ̨ģ�飬 ֧��Linux,OS X��
- core ���õ����ݽṹ������ hash�� ��ʱ���ȡ�
- protocol ֧�ֶ�дXML, XLSX, MYSQL�� �����ƻ��棬 ѹ�������ƻ���

��Ŀ����
========
	����Ҫ�κε�������Ϳ��Խ��б��밲װ��
	������ȡExcel���Ĺ��ܣ� ��Ҫ��װzlib�⡣
	������ȡmysql�Ĺ��ܣ� ��Ҫ��װmysql�⡣


��װ����
========
- Windows:
��[CMake](http://www.cmake.org/)����VS�����ļ�

		��CMake���档
		��Where is the source code��Ŀ������Դ�������ڵ�Ŀ¼�� ��"D:/TData"��
		��Where to build the binaries��Ŀ���������ɹ����ļ���Ŀ¼, ��"D:/build"��
		���Configure�������á�
		���Generate����VS�����ļ���
		�ڵ����Ľ����У� ѡ����Ҫ���ɵĹ������ͣ� ��ѡ��Visual Studio 11�� ���Finish��

	INSTALL

		�򿪽������Build����INSTALL�Ĺ��̣� �����װ��Ŀ¼�Ƿ���Ҫ����ԱȨ�ޣ� �����Ҽ�ѡ���ù���Ա��ʽ����VS��

- Linux:

	�������������Ŀ¼

		mkdir build

	����Դ����

		cd build

	����Makefile

		cmake ../TData

	����������Ѿ�����Ϥ��:)

		make
		sodu make install
	
��ѧ
====

	��ο�tutorialĿ¼��������ӡ�
