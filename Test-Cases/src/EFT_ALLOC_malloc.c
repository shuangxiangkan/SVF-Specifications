// The C library function int sscanf(const char *str, const char *format, ...) reads formatted input from a string.
void *malloc(unsigned int size);
void *realloc(void *ptr, unsigned int size);
char *strcpy(char *destination, const char *source);
char *strcat(char *dest, const char *src);
extern void NOALIAS(void *, void *);

int main () {
   char *str1;
   char *str2;

   /* Initial memory allocation */
   str1 = (char *) malloc(15);
   strcpy(str1, "tutorialspoint");

   /* Reallocating memory */
   str2 = (char *) realloc(str1, 25);
   strcat(str2, ".com");

   NOALIAS(str1, str2);

   free(str1);
   free(str2);
   
   return(0);
}