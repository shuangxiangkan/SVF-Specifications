// The C library function int sscanf(const char *str, const char *format, ...) reads formatted input from a string.
char *strtok(char *str, const char *delim);
extern void NOALIAS(void *, void *);

int main()
{
   char str[80] = "This is - https://github.com/SVF-tools/SVFm - website";
   const char s[2] = "-";
   char *token;

   /* get the first token */
   char *ret = token = strtok(str, s);

   NOALIAS(ret, str);
   NOALIAS(ret, s);

   return (0);
}