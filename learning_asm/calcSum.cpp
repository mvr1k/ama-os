#include<iostream>
using namespace std;

extern "C" int CaclSum_(int a,int b,int c);

int main(){
    int a = 19;
    int b = 11;
    int c = 12;

    int sum = CaclSum_(a,b,c);
    printf("sums is %d\n",10);

    return 0;
}