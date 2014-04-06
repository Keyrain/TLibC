#include "core/tlibc_string.h"

const char *tstrerror(TLIBC_ERROR_CODE errno)
{
	switch (errno)
	{
	case E_TLIBC_NOERROR:
		return "����";
	case E_TLIBC_ERROR:
		return "����";
	case E_TLIBC_OUT_OF_MEMORY:
		return "�ڴ����";
	case E_TLIBC_NOT_FOUND:
		return "�Ҳ���";
	case E_TLIBC_SYNTAX:
		return "�﷨����";
	case E_TLIBC_MISMATCH:
		return "��ƥ��";
	case E_TLIBC_ERRNO:
		return "errno";
	case E_TLIBC_WOULD_BLOCK:
		return "�ᱻ����";
	case E_TLIBC_BAD_FILE:
		return "������ļ�";
	case E_TLIBC_EOF:
		return "�ļ�����";
	case E_TLIBC_EMPTY:
		return "Ŀ��Ϊ��";
	case E_TLIBC_INTEGER_OVERFLOW:
		return "�������";
	case E_TLIBC_IGNORE:
		return "����";
	case E_TLIBC_PLEASE_READ_ENUM_NAME:
		return "���ȡö����";
	default:
		return "δ֪����";
	}
}
