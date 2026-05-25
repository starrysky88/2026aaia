///week14-2.cpp 了解函式
#include <stdio.h>

int f1(int x, int y)
{
    printf("f1()函式吃到參數x:%d y:%d\n", x, y);
    x = x+10; ///在函式裡加10
    printf("f1()函式修改後x:%d y:%d\n", x, y);
}

int main() ///定義main()函式
{
    printf("Hello World\n"); ///函式的呼叫
    int x = 100, y = 200;
    printf("main()函式裡原本x:%d y:%d\n", x, y);
    f1(x, y); ///呼叫f1函式,裡面改變數值跟外面沒關係
    printf("main()函式裡現在x:%d y:%d\n", x, y);
    return 0; ///沒寫的話main會自己幫你寫
}
