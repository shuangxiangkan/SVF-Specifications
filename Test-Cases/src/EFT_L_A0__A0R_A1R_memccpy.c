// The C library function void *memset(void *str, int c, size_t n) copies the character c (an unsigned char) to the first n characters of
// the string pointed to, by the argument str.
typedef unsigned long size_t;
extern void *memccpy(void *t, const void *f, int c, register size_t n);
extern unsigned long strlen(const char *str);
extern char *strcpy(char *dest, const char *src);
extern void MAYALIAS(void*,void*);

int main()
{
    char dest[1000];
    char* end = dest + sizeof dest;

    char* ret = memccpy(dest, "John, Tom", ',', sizeof dest);
    MAYALIAS(dest, ret);
    return 0;
}