// The C library function int sscanf(const char *str, const char *format, ...) reads formatted input from a string.
int sscanf(const char *str, const char *format, ...);
int printf(const char *format, ...);
char *strcpy(char *destination, const char *source);
extern void NOALIAS(void *, void *);

int main()
{
   int day, year;
   char weekday[20], month[20], dtm[100];

   strcpy(dtm, "Saturday March 25 1989");
   int s = sscanf(dtm, "%s %s %d  %d", weekday, month, &day, &year);

   int p = printf("%s %d, %d = %s\n", month, day, year, weekday);

   NOALIAS(s, weekday);
   NOALIAS(s, day);

   NOALIAS(p, month);
   NOALIAS(p, year);

   return (0);
}