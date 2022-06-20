// The C library function void *memset(void *str, int c, size_t n) copies the character c (an unsigned char) to the first n characters of
// the string pointed to, by the argument str.
extern void *memset(const char *, const char *, void *);
extern char *strcpy(char *, const char *);
extern void MAYALIAS(void*,void*);

int main()
{
    char str[50];
    char *ret;
    strcpy(str,"This is string.h library function");
    ret = memset(str,'$',7);
    MAYALIAS(str, ret);
    return 0;
}