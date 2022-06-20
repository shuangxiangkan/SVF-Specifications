// The C library function FILE *freopen(const char *filename, const char *mode, FILE *stream) 
// associates a new filename with the given open stream and at the same time closes the old file in the stream.
extern void *freopen(const char *, const char *, void *);
extern int fclose(void *stream);
extern void MAYALIAS(void*,void*);

int main()
{
    int a = 1;
    void *fp = &a;
    int b = 2;
    void *stdout = &b;
    const char filename[] = "test.txt";
    const char mode[] = "w+";
    fp = freopen(filename, mode, stdout);
    fclose(fp);
    MAYALIAS(fp, stdout);
    return 0;
}