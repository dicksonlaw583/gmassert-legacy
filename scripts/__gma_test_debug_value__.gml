{
  //undefined
  test_case(__gma_debug_value__(undefined), 'undefined');
  
  //real
  test_case(__gma_debug_value__(7), '7');
  test_case(__gma_debug_value__(-3.52), '-3.52');
  
  //strings
  test_case(__gma_debug_value__(""), '""');
  test_case(__gma_debug_value__("waahoo"), '"waahoo"');
  test_case(__gma_debug_value__('this is "waahoo"'), '"this is ""waahoo"""');
  
  //1d array
  var arrayA = test_fixture_array(5, 6, 7);
  test_case(__gma_debug_value__(arrayA), '(5, 6, 7)');
  
  //2d array
  var arrayB = test_fixture_array2(2, 5, "a", "b", 7);
  test_case(__gma_debug_value__(arrayB), '(5, "a"; "b", 7)');
}
