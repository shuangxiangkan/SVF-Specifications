// TThe C library function double strtod(const char *str, char **endptr) converts the string pointed to 
// by the argument str to a floating-point number (type double). If endptr is not NULL, 
// a pointer to the character after the last character used in the conversion is stored in the location referenced by endptr.
extern double strtod(const char *str, char **endptr);
extern void MAYALIAS(void*,void*);

int main()
{
    char str[30] = "20.30300 This is test";
    char *ptr;
    double ret;

    ret = strtod(str, &ptr);
    MAYALIAS(str, ptr);
    return 0;
}