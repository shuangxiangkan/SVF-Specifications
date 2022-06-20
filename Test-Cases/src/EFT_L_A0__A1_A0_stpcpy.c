// The C library function char *strcpy(char *dest, const char *src) copies the string pointed to, by src to dest
typedef unsigned long size_t;

extern char *stpcpy(char *restrict dest, const char *restrict src);
extern void MAYALIAS(void*,void*);

int main()
{
    char dest[100];
    char* ptr_dest = dest;
    char src[10] = "test";
    const char * ptr_src = src;
    char* ret;

    ret = stpcpy(ptr_dest, ptr_src);

    MAYALIAS(ret, ptr_dest);
    return 0;
}