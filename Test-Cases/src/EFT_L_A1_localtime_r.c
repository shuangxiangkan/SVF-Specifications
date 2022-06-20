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

extern struct tm *localtime_r(const time_t *timep, struct tm *result);
extern void MAYALIAS(void*,void*);

int main()
{
    time_t t = 1652605411;
    struct tm now_time;
    struct tm* ret;
    ret = localtime_r(&t, &now_time);

//    printf("%d-%d-%d %d:%d:%d\n", now_time.tm_year + 1900, now_time.tm_mon + 1,
//           now_time.tm_mday, now_time.tm_hour, now_time.tm_min, now_time.tm_sec);

    MAYALIAS(ret, &now_time);
    return 0;
}