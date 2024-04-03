#include "s21_decimal_test.h"

START_TEST(div_0) {
  s21_decimal val1 = {{2, 0, 0, ~(UINT_MAX / 2)}};
  s21_decimal val2 = {{2, 0, 0, 0}};
  s21_decimal res = {{0}};
  ck_assert_int_eq(0, s21_div(val1, val2, &res));
}
END_TEST

START_TEST(div_1) {
  s21_decimal val1 = {{2, 0, 0, 0}};
  s21_decimal val2 = {{2, 0, 0, ~(UINT_MAX / 2)}};
  s21_decimal res;
  ck_assert_int_eq(0, s21_div(val1, val2, &res));
}
END_TEST

START_TEST(div_2) {
  s21_decimal val1 = {{2, 0, 0, ~(UINT_MAX / 2)}};
  s21_decimal val2 = {{2, 0, 0, ~(UINT_MAX / 2)}};
  s21_decimal res = {{0}};
  ck_assert_int_eq(0, s21_div(val1, val2, &res));
}
END_TEST

START_TEST(div_3) {
  s21_decimal val1 = {{2, 0, 0, ~(UINT_MAX / 2)}};
  s21_decimal val2 = {{0, 0, 0, 0}};
  s21_decimal res = {{0}};
  ck_assert_int_eq(3, s21_div(val1, val2, &res));
}
END_TEST

START_TEST(div_4) {
  s21_decimal val1 = {{2, 0, 0, 0}};
  s21_decimal val2 = {{0, 0, 0, 0}};
  s21_decimal res = {{0}};
  ck_assert_int_eq(3, s21_div(val1, val2, &res));
}
END_TEST

START_TEST(div_5) {
  s21_decimal value_1 = {{35, 0, 0, 0}};
  s21_decimal value_2 = {{5, 0, 0, 0}};
  s21_decimal result = {{0, 0, 0, 0}};
  s21_decimal check = {{70, 0, 0, 0}};
  s21_set_scale(&value_1, 1);
  s21_set_scale(&value_2, 2);
  int return_value = s21_div(value_1, value_2, &result);
  ck_assert_int_eq(s21_is_equal(result, check), 1);
  ck_assert_int_eq(return_value, 0);
}
END_TEST

START_TEST(div_6) {
  s21_decimal value_1 = {{0x88888888, 0x88888888, 0x88888888, 0}};
  s21_decimal value_2 = {{0x2, 0, 0, 0}};
  s21_set_sign(&value_2);
  s21_decimal result = {{0, 0, 0, 0}};
  s21_decimal check = {{0x44444444, 0x44444444, 0x44444444, 0}};
  s21_set_sign(&check);
  int return_value = s21_div(value_1, value_2, &result);
  ck_assert_int_eq(s21_is_equal(result, check), 1);
  ck_assert_int_eq(return_value, 0);
}
END_TEST

START_TEST(div_7) {
  s21_decimal value_1 = {{10, 0, 0, 0}};
  s21_set_sign(&value_1);
  s21_decimal value_2 = {{8, 0, 0, 0}};
  s21_set_sign(&value_2);
  s21_decimal result = {{0, 0, 0, 0}};
  s21_decimal check = {{125, 0, 0, 0}};
  s21_set_scale(&check, 2);
  int return_value = s21_div(value_1, value_2, &result);
  ck_assert_int_eq(s21_is_equal(result, check), 1);
  ck_assert_int_eq(return_value, 0);
}
END_TEST

START_TEST(div_8) {
  s21_decimal value_1 = {{15, 0, 0, 0}};
  s21_set_sign(&value_1);
  s21_decimal value_2 = {{0, 0, 0, 0}};
  s21_decimal result = {{0, 0, 0, 0}};
  s21_decimal check = {{0, 0, 0, 0}};
  int return_value = s21_div(value_1, value_2, &result);
  ck_assert_int_eq(s21_is_equal(result, check), 1);
  ck_assert_int_eq(return_value, 3);
}
END_TEST

START_TEST(div_9) {
  s21_decimal value_1 = {{10, 0, 0, 0}};
  s21_decimal value_2 = {{1, 0, 0, 0}};
  s21_set_scale(&value_2, 2);
  s21_decimal result = {{0, 0, 0, 0}};
  s21_decimal check = {{1000u, 0, 0, 0}};
  int return_value = s21_div(value_1, value_2, &result);
  ck_assert_int_eq(s21_is_equal(result, check), 1);
  ck_assert_int_eq(return_value, 0);
}
END_TEST

START_TEST(s21_div_test_wtf_1) {
  s21_decimal src1, src2, res_div;
  float a = 9403.0e2;
  int b = 202;
  float res_our_dec = 0.0;
  s21_from_float_to_decimal(a, &src1);
  s21_from_int_to_decimal(b, &src2);
  float res_origin = 4654.95495495495495;  // 4654.959495049504950495049505
  s21_div(src1, src2, &res_div);
  s21_from_decimal_to_float(res_div, &res_our_dec);
  ck_assert_float_eq(res_our_dec, res_origin);
}
END_TEST

START_TEST(s21_div_test_wtf_2) {
  s21_decimal src1, src2, res_div;
  int a = -32768;
  int b = 2;
  int res_our_dec = 0;
  s21_from_int_to_decimal(a, &src1);
  s21_from_int_to_decimal(b, &src2);
  int res_origin = -16384;
  s21_div(src1, src2, &res_div);
  s21_from_decimal_to_int(res_div, &res_our_dec);
  ck_assert_int_eq(res_our_dec, res_origin);
}
END_TEST

START_TEST(s21_div_test_wtf_3) {
  s21_decimal src1, src2, res_div;
  float a = -9403.0e2;
  float b = -2020.29;
  float res_our_dec = 0.0;
  s21_from_float_to_decimal(a, &src1);
  s21_from_float_to_decimal(b, &src2);
  float res_origin = 465.4282306005573457275935633;
  s21_div(src1, src2, &res_div);
  s21_from_decimal_to_float(res_div, &res_our_dec);
  ck_assert_float_eq(res_our_dec, res_origin);
}
END_TEST

START_TEST(s21_div_test_wtf_4) {
  s21_decimal src1, src2, res_div;
  float a = -9403.0e2;
  float b = 2020.29;
  float res_our_dec = 0.0;
  s21_from_float_to_decimal(a, &src1);
  s21_from_float_to_decimal(b, &src2);
  float res_origin = -465.4282306005573457275935633;
  s21_div(src1, src2, &res_div);
  s21_from_decimal_to_float(res_div, &res_our_dec);
  ck_assert_float_eq(res_our_dec, res_origin);
}
END_TEST

START_TEST(s21_div_test_wtf_6) {
  s21_decimal src1, src2, res_div;
  float a = -0.9;
  float b = 30.323;
  float res_our_dec = 0.0;
  s21_from_float_to_decimal(a, &src1);
  s21_from_float_to_decimal(b, &src2);
  float res_origin = -0.02968445896659844824;  //-0.029680
  s21_div(src1, src2, &res_div);
  s21_from_decimal_to_float(res_div, &res_our_dec);
  ck_assert_float_eq(res_our_dec, res_origin);
}
END_TEST

START_TEST(s21_div_test_wtf_7) {
  s21_decimal src1, src2, res_div;
  float a = -0.9e3;
  float b = 30.32;
  float res_our_dec = 0.0;
  s21_from_float_to_decimal(a, &src1);
  s21_from_float_to_decimal(b, &src2);
  float res_origin = a / b;
  s21_div(src1, src2, &res_div);
  s21_from_decimal_to_float(res_div, &res_our_dec);
  ck_assert_float_eq(res_our_dec, res_origin);
}
END_TEST

START_TEST(s21_div_test_wtf_8) {
  s21_decimal src1, src2, res_div;
  float a = -0.9e3;
  int b = 30;
  float res_our_dec = 0.0;
  s21_from_float_to_decimal(a, &src1);
  s21_from_int_to_decimal(b, &src2);
  float res_origin = a / b;
  s21_div(src1, src2, &res_div);
  s21_from_decimal_to_float(res_div, &res_our_dec);
  ck_assert_float_eq(res_our_dec, res_origin);
}
END_TEST

START_TEST(s21_div_test_wtf_9) {
  s21_decimal src1, src2, res_div;
  float a = -0.9;
  float b = 0.000076;
  float res_our_dec = 0;
  s21_from_float_to_decimal(a, &src1);
  s21_from_float_to_decimal(b, &src2);
  float res_origin = 0;
  s21_div(src1, src2, &res_div);
  // s21_from_decimal_to_float(res_div, &res_our_dec);
  ck_assert_float_eq(res_our_dec, res_origin);
}
END_TEST

START_TEST(s21_div_test_wtf_10) {
  s21_decimal src1 = {{0, 0, 0, 0}},
              src2 = {{0xffffffff, 0xffffffff, 0xffffffff, 0}};
  s21_decimal temp = {{0, 0, 0, 0}};
  int a = s21_div(src2, src1, &temp);
  ck_assert_float_eq(a, 3);
}
END_TEST

START_TEST(s21_div_test_wtf_12) {
  s21_decimal src1 = {{0x80000000, 0x80000000, 0x80000000, 0}},
              src2 = {{2, 0, 0, 28 << 16}};
  s21_decimal temp = {{0, 0, 0, 0}};
  int a = s21_div(src1, src2, &temp);
  ck_assert_int_eq(a, 1);
}
END_TEST

START_TEST(s21_div_test_wtf_13) {
  s21_decimal src1 = {{0xffffffff, 0xffffffff, 0xffffffff, 0}},
              src2 = {{0, 0, 0xffffffff, 0}};
  s21_decimal temp = {{0, 0, 0, 0}};
  int a = s21_div(src1, src2, &temp);
  ck_assert_int_eq(a, 0);
}
END_TEST

START_TEST(s21_div_test_wtf_14) {
  s21_decimal src1 = {{0xffffffff, 0xffffffff, 0xffffffff, 0}},
              src2 = {{2, 2, 2, 2}};
  s21_decimal temp = {{0, 0, 0, 0}};
  int a = s21_div(src1, src2, &temp);
  ck_assert_int_eq(a, 0);
}
END_TEST

START_TEST(s21_div_test_wtf_15) {
  s21_decimal src1 = {{0xffffffff, 0xffffffff, 0xffffffff, 0}},
              src2 = {{0xffffffff, 0xffffffff, 0xffffffff, 28 << 16}};
  s21_decimal temp = {{0, 0, 0, 0}};
  int a = s21_div(src1, src2, &temp);
  ck_assert_int_eq(a, 0);
}
END_TEST

START_TEST(s21_div_test_wtf_16) {
  s21_decimal src1 = {{1, 0, 0, 28 << 16}}, src2 = {{100000, 0, 0, 0}};
  s21_decimal temp = {{0, 0, 0, 0}};
  int a = s21_div(src1, src2, &temp);
  ck_assert_int_eq(a, 0);
}
END_TEST

Suite *suite_div(void) {
  Suite *s = suite_create("suite_div");
  TCase *tc = tcase_create("case_div");

  tcase_add_test(tc, div_0);
  tcase_add_test(tc, div_1);
  tcase_add_test(tc, div_2);
  tcase_add_test(tc, div_3);
  tcase_add_test(tc, div_4);
  tcase_add_test(tc, div_5);
  tcase_add_test(tc, div_6);
  tcase_add_test(tc, div_7);
  tcase_add_test(tc, div_8);
  tcase_add_test(tc, div_9);
  tcase_add_test(tc, s21_div_test_wtf_1);
  tcase_add_test(tc, s21_div_test_wtf_2);
  tcase_add_test(tc, s21_div_test_wtf_3);
  tcase_add_test(tc, s21_div_test_wtf_4);
  tcase_add_test(tc, s21_div_test_wtf_6);
  tcase_add_test(tc, s21_div_test_wtf_7);
  tcase_add_test(tc, s21_div_test_wtf_8);
  tcase_add_test(tc, s21_div_test_wtf_9);
  tcase_add_test(tc, s21_div_test_wtf_10);
  tcase_add_test(tc, s21_div_test_wtf_12);
  tcase_add_test(tc, s21_div_test_wtf_13);
  tcase_add_test(tc, s21_div_test_wtf_14);
  tcase_add_test(tc, s21_div_test_wtf_15);
  tcase_add_test(tc, s21_div_test_wtf_16);

  suite_add_tcase(s, tc);
  return s;
}
