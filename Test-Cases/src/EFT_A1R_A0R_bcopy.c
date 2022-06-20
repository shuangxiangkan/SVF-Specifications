// TThe C library function double strtod(const char *str, char **endptr) converts the string pointed to 
// by the argument str to a floating-point number (type double). If endptr is not NULL, 
// a pointer to the character after the last character used in the conversion is stored in the location referenced by endptr.
typedef unsigned long size_t;

extern void bcopy (const void *src, void *dest, size_t len);
extern void MAYALIAS(void*,void*);

int main()
{
    char dest[30] = "string(a)";
    char * ptr_dest = dest;
    char ** ptr2_dest = &ptr_dest;
    char src[30] = "string\0string";
    char * ptr_src = src;
    char ** ptr2_src = &ptr_src;
    bcopy(ptr2_src, ptr2_dest, 30); //src 指针放在前
//    cout<<dest;
    MAYALIAS(ptr_src, ptr_dest);
    return 0;
}