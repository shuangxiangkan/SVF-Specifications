// The C library function int puts(const char *str) writes a string to stdout up to 
// but not including the null character. A newline character is appended to the output.
extern int puts(const char *str);
extern void NOALIAS(void*,void*);

int main () {
   char str1[15];

   strcpy(str1, "https://github.com/SVF-tools/SVF");

   int s = puts(str1);

   NOALIAS(s, str1);
   
   return(0);
}