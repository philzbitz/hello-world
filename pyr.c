#include <cs50.h>
#include <stdio.h>

//int main(void)
//{
//    int i = get_int("Integer: ");
//    printf("hello %i\n", i);
//}
//    int x = get_int("x: ");
//    printf("%i\n", square(x));
int main()
{
    int h;
    do
    {
    h = get_int("height: ");
    //    h++;
    //    printf("%i\n", h);
    }
    while (h <= -1 || h >= 24);

    int p = h;
    int t = 2;
    for (int i = 0; i < h; i++)
    {
        p--;
        for (int j = 0; j < p; j++)
        {
            printf(" ");
        }
        t++;
        for (int k = 1; k < t; k++)
        {
            printf("#");
        }
    printf(" ");
        for (int k = 1; k < t; k++)
        {
            printf("#");
        }
    printf("\n");
    }
}
