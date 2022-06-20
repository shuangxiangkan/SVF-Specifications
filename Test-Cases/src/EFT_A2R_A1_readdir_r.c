// The C library function unsigned long int strtoul(const char *str, char **endptr, int base) function 
// converts the initial part of the string in str to an unsigned long int value according to the given base, 
// which must be between 2 and 36 inclusive, or be the special value 0.
struct dirent{};

extern int readdir_r(void *restrict dirp, struct dirent *restrict entry, struct dirent **restrict result);
extern void MAYALIAS(void*,void*);

int main()
{
    struct dirent dirent1;
    struct dirent* p1 = &dirent1;
    struct dirent dirent2;
    struct dirent* p2 = &dirent2;
    struct dirent** pp2 = &p2;
    void * dir;
    int ret;

    ret = readdir_r(dir, p1, pp2);
    MAYALIAS(p1, p2);
    return 0;
}