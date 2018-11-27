#include <cs50.h>
#include <stdio.h>

//print # pyramid with user input for height
int main()
{
    //get user input: >-1 <24
    int h;
    do
    {
    h = get_int("height: ");
    }
    while (h <= -1 || h >= 24);

    //print #pyramid
    int p = h;
    int t = 2;
    for (int i = 0; i < h; i++)
    {
        p--;
        //print spaces on left of pyramid
        for (int j = 0; j < p; j++)
        {
            printf(" ");
        }
        t++;
        //print left side #
        for (int k = 1; k < t; k++)
        {
            printf("#");
        }
        //print space between
    printf("  ");
        //print right side #
        for (int k = 1; k < t; k++)
        {
            printf("#");
        }
    printf("\n");
    }
}
