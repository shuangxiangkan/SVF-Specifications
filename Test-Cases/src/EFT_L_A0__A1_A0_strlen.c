// The C library function char *strcpy(char *dest, const char *src) copies the string pointed to, by src to dest
typedef unsigned long size_t;

extern size_t strlen(const char *str);
extern void MAYALIAS(void*,void*);
extern void NOALIAS(void*,void*);

int main()
{
    const char *ptr_str = "test";
    size_t len;

    len = strlen(ptr_str);

    NOALIAS(len, ptr_str);
    return 0;
}