// The C library function void *memset(void *str, int c, size_t n) copies the character c (an unsigned char) to the first n characters of
// the string pointed to, by the argument str.
extern void *memcpy(void *dest, const void * src, unsigned long n);
extern unsigned long strlen(const char *str);
extern char *strcpy(char *dest, const char *src);
extern void MAYALIAS(void*,void*);

int main()
{
    const char src[50] = "https://github.com/SVF-tools/SVF";
    char dest[50];
    char *ret;
    strcpy(dest,"Heloooo!!");
    ret = memcpy(dest, src, strlen(src)+1);
    MAYALIAS(dest, ret);
    return 0;
}