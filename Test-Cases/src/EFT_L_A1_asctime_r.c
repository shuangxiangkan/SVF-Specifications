// The C library function void *bsearch(const void *key, const void *base, size_t nitems, size_t size, 
// int (*compar)(const void *, const void *)) function searches an array of nitems objects, 
// the initial member of which is pointed to by base, for a member that matches the object pointed to, by key. 
// The size of each member of the array is specified by size.
typedef long time_t;
struct tm {
    int tm_sec;    /* Seconds (0-60) */
    int tm_min;    /* Minutes (0-59) */
    int tm_hour;   /* Hours (0-23) */
    int tm_mday;   /* Day of the month (1-31) */
    int tm_mon;    /* Month (0-11) */
    int tm_year;   /* Year - 1900 */
    int tm_wday;   /* Day of the week (0-6, Sunday = 0) */
    int tm_yday;   /* Day in the year (0-365, 1 Jan = 0) */
    int tm_isdst;  /* Daylight saving time */
};

extern char*  asctime_r( const struct tm* time_ptr, char* buf );
extern void MAYALIAS(void*,void*);

int main()
{
    struct tm t;
    char buf[10];
    char *ret;

    t.tm_sec    = 10;
    t.tm_min    = 10;
    t.tm_hour   = 6;
    t.tm_mday   = 25;
    t.tm_mon    = 2;
    t.tm_year   = 89;
    t.tm_wday   = 6;

    ret = asctime_r(&t, buf);

    MAYALIAS(ret, buf);
    return 0;
}