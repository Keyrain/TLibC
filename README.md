TLibC
======
**C���Գ��ú�����**

- platform ��Linux, Windows, Unix(Mac OSX)�µĲ�������˷ǳ��򵥵ķ�װ��
- core ���õ����ݽṹ������ hash�� ��ʱ���ȡ�
- protocol ��xml, xlsx, mysql�����ݵĴ�ȡ�� �ṩ��ͳһ�Ľӿڣ� Ҳ֧��������[Thrift](http://thrift.apache.org/)��Binary��Compact�����ݸ�ʽ��

��Ŀ����
========
- ������ȡExcel���Ĺ��ܣ� ��Ҫ��װzlib�⡣
- ������ȡmysql�Ĺ��ܣ� ��Ҫ��װmysql�⡣


��װ����
========
TLibC������ʹ��[CMake](http://www.cmake.org/)��Ϊ�������ߣ� ֧��Linux, Windows, Unix(Mac OSX)����ϵͳ��

- Windows:

	��[CMake](http://www.cmake.org/)����VS�����ļ�

		��CMake���档
		��Where is the source code��Ŀ������Դ�������ڵ�Ŀ¼�� ��"D:/TLibC"��
		��Where to build the binaries��Ŀ���������ɹ����ļ���Ŀ¼, ��"D:/build"��
		���Configure�������á�
		���Generate����VS�����ļ���
		�ڵ����Ľ����У� ѡ����Ҫ���ɵĹ������ͣ� ��ѡ��Visual Studio 11�� ���Finish��

	��װ

		�򿪽������Build����INSTALL�Ĺ��̣� �����װ��Ŀ¼�Ƿ���Ҫ����ԱȨ�ޣ� �����Ҽ�ѡ���ù���Ա��ʽ����VS��

### 1.CMake���ɹ����ļ�
������Ҫ��buildĿ¼�����ɹ����ļ��� Դ����λ��TLibCĿ¼��

    Linux/Unix:
        cd ./build
        cmake ../TLibC

    Windows:
        ��CMake���档
        ���Where is the source code��Ŀ�Ҳ��Browse Sourceѡ��TLibCĿ¼��
        ���Where is the source code��Ŀ�Ҳ��Browse Buildѡ��buildĿ¼��

_CMakeѡ��:_
- CMAKE_BUILD_TYPE ѡ�����ѡ��Debug|Release, Windows������Visual Studio����ѡ��
- CMAKE_INSTALL_PREFIX ָ����װ·����
- TLIBC_INCLUDE_DIR ������TLIBC��ͷ�ļ�Ŀ¼��
- WITH_RE2C ѡ��������������﷨�������ֵĴ��룬 ��Ҫ��װ [re2c](http://www.re2c.org)��

### 2.���밲װ

    Linux/Unix:
        make
        make install

    Windows:
        ��buildĿ¼�µ�Visual Studio���̣� ����INSTALL��Ŀ��
	
��ѧ
====

	��ο�tutorialĿ¼��������ӡ�
