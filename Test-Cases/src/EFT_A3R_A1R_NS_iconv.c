// TThe C library function double strtod(const char *str, char **endptr) converts the string pointed to 
// by the argument str to a floating-point number (type double). If endptr is not NULL, 
// a pointer to the character after the last character used in the conversion is stored in the location referenced by endptr.
typedef unsigned long size_t;
typedef void *iconv_t;

extern size_t iconv(void *cd, char **restrict inbuf, size_t *restrict inbytesleft, char **restrict outbuf, size_t *restrict outbytesleft);

extern void MAYALIAS(void*,void*);

int main()
{
    char *gbk_str = "GBK \xB5\xE7\xCA\xD3\xBB\xFA";
    char ** ptr_gbk_str = &gbk_str;
    char dest_str[100];
    char *out = dest_str;
    char ** ptr_out = &out;
    size_t inbytes = strlen(gbk_str);
    size_t outbytes = sizeof dest_str;
//    iconv_t conv = iconv_open("ISO-8859-1//TRANSLIT", "GBK");
    iconv_t conv;

    iconv(conv, ptr_gbk_str, &inbytes, ptr_out, &outbytes);

    MAYALIAS(ptr_gbk_str, ptr_gbk_str);
    return 0;
}