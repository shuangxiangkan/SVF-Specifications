// The C library function int sscanf(const char *str, const char *format, ...) reads formatted input from a string.
char *getenv(const char *name);
extern void NOALIAS(void *, void *);

int main()
{

	char *command = "PATH";
	char *ret = getenv(command);

	NOALIAS(command, ret);

	return (0);
}