// The C library function void *memmove(void *str1, const void *str2, size_t n) copies n 
// characters from str2 to str1, but for overlapping memory blocks, memmove() is a safer approach than memcpy().
extern void * memmove (void *dest, const void *src, unsigned long len);
extern void MAYALIAS(void*,void*);

int main()
{
    char dest[] = "oldstring";
    const char src[]  = "newstring";
    char *ret;
    ret = memmove(dest, src, 9);
    MAYALIAS(dest, ret);
    return 0;
}