// The C library function void *memchr(const void *str, int c, size_t n) searches for the first occurrence of the 
// character c (an unsigned char) in the first n bytes of the string pointed to, by the argument str.
extern void *memchr(const void *str, int c, unsigned long n);
extern unsigned long strlen(const char *str);
extern void MAYALIAS(void*, void*);

int main()
{
    const char str[] = "Hello, SVF";
    const char ch = '.';
    char *ret;

    ret = memchr(str, ch, strlen(str));
    MAYALIAS(str, ret);
    return 0;
}