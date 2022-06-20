// The C library function void *memchr(const void *str, int c, size_t n) searches for the first occurrence of the 
// character c (an unsigned char) in the first n bytes of the string pointed to, by the argument str.

extern int isdigit(int arg);
extern void NOALIAS(void*, void*);

int main()
{
    int a_digit = 123;
    int ret;

    ret = isdigit(a_digit);
    NOALIAS(ret, a_digit);
    return 0;
}
