// The C library function unsigned long int strtoul(const char *str, char **endptr, int base) function 
// converts the initial part of the string in str to an unsigned long int value according to the given base, 
// which must be between 2 and 36 inclusive, or be the special value 0.
struct passwd{};
typedef unsigned long size_t;
extern int getpwnam_r(const char *name, struct passwd *pwd, char *buf, size_t buflen, struct passwd **result);
extern void MAYALIAS(void*,void*);

int main()
{
    const char * name;
    struct passwd password;
    struct passwd *ptr_password = &password;
    char buf[10];
    size_t blen = 10;
    struct passwd password2;
    struct passwd *ptr_password2 = &password2;
    struct passwd **ptr2_password2 = &ptr_password2;

    int ret = getpwnam_r(name,ptr_password, buf, blen, ptr2_password2);
    MAYALIAS(ptr_password, ptr_password2);
    return 0;
}