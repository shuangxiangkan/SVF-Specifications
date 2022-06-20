// The C library function char *strcpy(char *dest, const char *src) copies the string pointed to, by src to dest
typedef unsigned long size_t;

extern char *strncpy(char *s1, const char *s2, size_t n);
extern void MAYALIAS(void*,void*);

int main()
{
    char src[40] = "This is a long string.";
    char dest[12];
    char * ret;

    ret = strncpy(dest, src, 10);

    MAYALIAS(ret, dest);
    return 0;
}