{
  //undefined
  test_case(__gma_debug_type__(undefined), GMASSERT_TYPE_UNDEFINED);
  
  //real
  test_case(__gma_debug_type__(7), GMASSERT_TYPE_REAL);
  test_case(__gma_debug_type__(-pi), GMASSERT_TYPE_REAL);
  
  //string
  test_case(__gma_debug_type__(""), GMASSERT_TYPE_STRING);
  test_case(__gma_debug_type__("waahoo"), GMASSERT_TYPE_STRING);
  
  //1D array
  var arrayA = test_fixture_array(5, 6, 7);
  test_case(__gma_debug_type__(arrayA), GMASSERT_TYPE_ARRAY);
  
  //2D array
  var arrayB = test_fixture_array2(2, 5, "a", "b", 7);
  test_case(__gma_debug_type__(arrayB), GMASSERT_TYPE_ARRAY);
}
