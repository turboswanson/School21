#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "s21_decimal.h"

#define EXPONENT_PLUS_1 65536
// 3.8 -> 3.0
  //-3.8 -> -4.0

int main(void) {
 s21_decimal num = {0};
 num.bits[0] = 77;
 s21_set_scale(&num,1);
 s21_long_decimal value = {0};
 s21_short_to_long_decimal(num,&value);
 s21_long_decimal ten = {10,0,0,0,0,0,0};
 
 s21_long_decimal res = {0};
 int rem = 0;
 s21_div_long_int(value,ten,&res,&rem);
 s21_decimal result = {0};
 s21_long_to_short_decimal(res,&result);
 print_decimal(result);

 return 0;
}



/*

*BITWISE LEFT SHIFT*

int x = 2;
x << 3 --> x*2^3 ---> x = 16;

*BITWISE RIGHT SHIFT*

int x = 8;

x >> 3 --> x/(2^3)  --> x = 1;
*/

/*

BITS[3]

0    0000000   0001 1100 0000 000 0000 0000
127  126-120   119-112    112 - 96
31   30 - 24     23-16    15  -  0
s                pow

sign:          pow: 10^0 - 10^28
0 > 0
1 < 0
*/

/*
IF NUM < 0

char x = -3;

2's complement method :

1. 3 = 00000011
2. ~3 = 11111100
3. +1 = 11111101
-3 == 11111101


32bit system

INT_MAX = 2 147 483 648; // 01111111111111111111111111111111

UINT_MAX = 4 294 967 295; // 11111111111111111111111111111111

*/

/*
ADD

0 + 0 = 0;
1 + 0 = 1;
0 + 1 = 1;
1 + 1 = 0(1);
1 + 1 + 1 = 1(1);
*/

/*
SUB

0 - 0 = 0
1 - 0 = 1
1 - 1 = 0
0 - 1 = 1(1)

*/

/*

MUL

  0 * 0 = 0;
  0 * 1 = 0;
  1 * 0 = 0;
  1 * 1 = 1;

  00000111
  00000010
  ________
  00000000
  +
  00001110
  +
  00000000
  ________


*/

/*
DIV

01000 110 / 111  (70/7)
 -111 ----> 1 (1000/111 = 0001)
  ___
  001 1 ---> 0 (cant' 11/111)
    1 1 1 ----> 1 (111/111)
  - 1 1 1
  _______
    0 0 0 ------> 0 can't(000/111)
                  answer: 1 0 1 0

*/