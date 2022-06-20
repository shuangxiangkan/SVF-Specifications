// The C library function unsigned long int strtoul(const char *str, char **endptr, int base) function 
// converts the initial part of the string in str to an unsigned long int value according to the given base, 
// which must be between 2 and 36 inclusive, or be the special value 0.
extern unsigned long int strtoul(const char *str, char **endptr, int base);
extern void MAYALIAS(void*,void*);

int main()
{
    char str[30] = "2030300 This is test";
    char *ptr;
    long ret;

    ret = strtoul(str, &ptr, 10);
    MAYALIAS(str, ptr);
    return 0;
}