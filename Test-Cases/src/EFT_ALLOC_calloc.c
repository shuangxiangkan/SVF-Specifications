// The C library function int sscanf(const char *str, const char *format, ...) reads formatted input from a string.
void *calloc(unsigned int nitems, unsigned int size);
extern void NOALIAS(void *, void *);

int main()
{
	int i, n;
	int *a;

	a = (int *)calloc(n, sizeof(int));

	NOALIAS(a, i);

	free(a);

	return (0);
}