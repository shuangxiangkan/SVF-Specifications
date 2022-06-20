// The C library function char *strchr(const char *str, int c) searches for the first occurrence of the character c (an unsigned char) in the string pointed to by the argument str.
extern char *strchr(const char *str, int c);
extern void MAYALIAS(void*,void*);

int main()
{
    const char str[] = "https://github.com/SVF-tools/SVF";
    const char ch = '.';
    char *ret;

    ret = strchr(str, ch);
    MAYALIAS(str, ret);
    return 0;
}