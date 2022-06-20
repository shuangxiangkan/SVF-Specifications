// The C library function char *strcpy(char *dest, const char *src) copies the string pointed to, by src to dest
extern char *strncat(char *dest, const char *src, unsigned long n);
extern void MAYALIAS(void*,void*);

int main()
{
    char src[50] = "This is source";
    char dest[50] = "This is destination";
    char *ret = strncat(dest, src, 15);
    MAYALIAS(dest, ret);
    return 0;
}