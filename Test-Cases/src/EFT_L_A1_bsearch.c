// The C library function void *bsearch(const void *key, const void *base, size_t nitems, size_t size, 
// int (*compar)(const void *, const void *)) function searches an array of nitems objects, 
// the initial member of which is pointed to by base, for a member that matches the object pointed to, by key. 
// The size of each member of the array is specified by size.
extern void *bsearch(const void *key, const void *base, unsigned long nitems, unsigned long size, int (*compar)(const void *, const void *));
extern void MAYALIAS(void*,void*);

int cmpfunc(const void * a, const void * b) {
   return ( *(int*)a - *(int*)b );
}

int values[] = { 5, 20, 29, 32, 63 };

int main()
{
    int *item;
    int key = 32;

    /* using bsearch() to find value 32 in the array */
    item = (int*) bsearch (&key, values, 5, sizeof (int), cmpfunc);
    MAYALIAS(values, item);
    return 0;
}