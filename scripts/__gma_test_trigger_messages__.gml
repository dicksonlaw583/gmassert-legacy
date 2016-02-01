{
  var arrayA = test_fixture_array(1, 2, 3),
      arrayB = test_fixture_array2(2, "a", "b", "c", "d");
  
  //assert(got)
  test_case_no_trigger(assert(5 > 3));
  test_case_trigger(assert("waahoo" == "woohah"));
  test_case_trigger(assert(undefined));
  
  //assert_fail(got)
  test_case_no_trigger(assert_fail("waahoo" == "woohah"));
  test_case_no_trigger(assert_fail(undefined));
  test_case_trigger(assert_fail(5 > 3));
  
  //assert_equal(got, expected)
  test_case_no_trigger(assert_equal(-4, -4));
  test_case_no_trigger(assert_equal("abc", "abc"));
  test_case_no_trigger(assert_equal(undefined, undefined));
  test_case_no_trigger(assert_equal(arrayA, arrayA));
  test_case_no_trigger(assert_equal(arrayB, arrayB));
  test_case_trigger(assert_equal(-4, 7));
  test_case_trigger(assert_equal("abc", ""));
  test_case_trigger(assert_equal(undefined, 72));
  test_case_trigger(assert_equal(arrayA, arrayB));
  test_case_no_trigger(assert_equal(test_fixture_array(1, 2, 3), test_fixture_array(1, 2, 3)));
  test_case_no_trigger(assert_equal(arrayA, test_fixture_array(1, 2, 3)));
  
  //assert_not_equal(got, expected)
  test_case_no_trigger(assert_not_equal(-4, 7));
  test_case_no_trigger(assert_not_equal("abc", ""));
  test_case_no_trigger(assert_not_equal(undefined, 72));
  test_case_no_trigger(assert_not_equal(arrayA, arrayB));
  test_case_trigger(assert_not_equal(arrayA, test_fixture_array(1, 2, 3)));
  test_case_trigger(assert_not_equal(test_fixture_array(1, 2, 3), test_fixture_array(1, 2, 3)));
  test_case_trigger(assert_not_equal(-4, -4));
  test_case_trigger(assert_not_equal("abc", "abc"));
  test_case_trigger(assert_not_equal(undefined, undefined));
  test_case_trigger(assert_not_equal(arrayA, arrayA));
  test_case_trigger(assert_not_equal(arrayB, arrayB));
  
  //assert_is(got, expected)
  test_case_no_trigger(assert_is(-4, -4));
  test_case_no_trigger(assert_is("abc", "abc"));
  test_case_no_trigger(assert_is(undefined, undefined));
  test_case_no_trigger(assert_is(arrayA, arrayA));
  test_case_no_trigger(assert_is(arrayB, arrayB));
  test_case_trigger(assert_is(-4, 7));
  test_case_trigger(assert_is("abc", ""));
  test_case_trigger(assert_is(undefined, 72));
  test_case_trigger(assert_is(arrayA, arrayB));
  test_case_trigger(assert_is(test_fixture_array(1, 2, 3), test_fixture_array(1, 2, 3)));
  
  //assert_isnt(got, expected)
  test_case_no_trigger(assert_isnt(-4, 7));
  test_case_no_trigger(assert_isnt("abc", ""));
  test_case_no_trigger(assert_isnt(undefined, 72));
  test_case_no_trigger(assert_isnt(arrayA, arrayB));
  test_case_no_trigger(assert_isnt(test_fixture_array(1, 2, 3), test_fixture_array(1, 2, 3)));
  test_case_trigger(assert_isnt(-4, -4));
  test_case_trigger(assert_isnt("abc", "abc"));
  test_case_trigger(assert_isnt(undefined, undefined));
  test_case_trigger(assert_isnt(arrayA, arrayA));
  test_case_trigger(assert_isnt(arrayB, arrayB));
}
