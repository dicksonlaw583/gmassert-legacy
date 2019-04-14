///assert_less_than(got, expected, [msg])
//Assert that the gotten expression is less than the expected expression.
{
  if (!GMASSERT_MODE) exit;
  
  //Capture message argument
  var msg;
  switch (argument_count) {
    case 2:
      msg = "Less than assertion failed!";
    break;
    case 3:
      msg = argument[2];
    break;
    default:
      show_error("Expected 2 or 3 arguments, got " + string(argument_count) + ".", true);
    break;
  }
  
  //Check assertion
  if (!__gma_less_than__(argument[0], argument[1])) {
    switch (typeof(argument[1])) {
      case "number":
        __gma_assert_error_raw__(msg, "A real value less than " + __gma_debug_value__(argument[1]), __gma_debug_value__(argument[0]));
      break;
      case "string":
        __gma_assert_error_raw__(msg, "A string that comes before " + __gma_debug_value__(argument[1]), __gma_debug_value__(argument[0]));
      break;
      case "array":
        __gma_assert_error_raw__(msg, "An array with pairwise values all less than " + __gma_debug_value__(argument[1]), __gma_debug_value__(argument[0]));
      break;
      default:
        __gma_assert_error__(msg + " (unsupported type)", argument[1], argument[0]);
      break;
    }
  }
}
