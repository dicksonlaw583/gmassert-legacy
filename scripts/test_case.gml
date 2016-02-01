///test_case(got, [expected])
{
  global.__gma_case_count__++;
  
  var result;
  switch (argument_count) {
    case 1:
      result = argument[0];
    break;
    case 2:
      result = __gma_debug_value__(argument[0]) == __gma_debug_value__(argument[1]) && argument[0] == argument[1]; 
    break;
    default:
      show_error("Expected 1 or 2 arguments, got " + string(argument_count) + ".", true);
    break;
  }
  if (result) {
    show_debug_message("Test case " + string(global.__gma_case_count__) + ": PASS");
  } 
  else {
    show_debug_message("Test case " + string(global.__gma_case_count__) + ": FAIL");
    global.__gma_fail_count__++;
    global.__gma_test_time__ += current_time-global.__gma_test_time_start__;
    show_error("Test case failed!", false);
    global.__gma_test_time_start__ = current_time;
  }
}
