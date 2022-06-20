// The C library function void *memchr(const void *str, int c, size_t n) searches for the first occurrence of the 
// character c (an unsigned char) in the first n bytes of the string pointed to, by the argument str.

extern char *tmpnam_r(char *s);
extern void MAYALIAS(void*, void*);

int main()
{
    char buffer[10] = "test";
    char *ptr;

    ptr = tmpnam_r(buffer);
    MAYALIAS(ptr, buffer);
    return 0;
}
