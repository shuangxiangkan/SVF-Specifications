// TThe C library function double strtod(const char *str, char **endptr) converts the string pointed to 
// by the argument str to a floating-point number (type double). If endptr is not NULL, 
// a pointer to the character after the last character used in the conversion is stored in the location referenced by endptr.
extern long int strtol(const char *str, char **endptr, int base);
extern void MAYALIAS(void*,void*);

int main()
{
    char str[30] = "2030300 This is test";
    char *ptr;
    long ret;

    ret = strtol(str, &ptr, 10);
    MAYALIAS(str, ptr);
    return 0;
}