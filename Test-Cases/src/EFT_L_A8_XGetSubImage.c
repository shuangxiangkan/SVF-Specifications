// The C library function void *bsearch(const void *key, const void *base, size_t nitems, size_t size, 
// int (*compar)(const void *, const void *)) function searches an array of nitems objects, 
// the initial member of which is pointed to by base, for a member that matches the object pointed to, by key. 
// The size of each member of the array is specified by size.
extern void *XGetSubImage(void *display, int d, int x, int y, unsigned int width, unsigned int height, unsigned long plane_mask, int format, void *dest_image, int dest_x, int dest_y);
extern void MAYALIAS(void*,void*);

struct Display{};
struct XImage{};

int main()
{
    struct Display *dpy;
    struct XImage ximage;
    struct XImage *ptr_ximage = &ximage;
    int readable;
    int x;
    int y;
    int w;
    int h;
    int ZPixmap;

    void * ret;

    ret = XGetSubImage(dpy, readable, x, y, w, h, ~0L, ZPixmap, ptr_ximage, 0, 0);

    MAYALIAS(ret, ptr_ximage);
    return 0;
}