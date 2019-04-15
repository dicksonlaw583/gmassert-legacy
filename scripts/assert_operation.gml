///assert_operation(got, expected, op, invert, [msg], [debug_got], [debug_expected])
{
  if (!GMASSERT_MODE) exit;
  
  //Capture message argument
  var msg = "Assertion Failed!",
      debug_got = __gma_debug_value__,
      debug_expected = __gma_debug_value__;
  switch (argument_count) {
    case 7:
      debug_expected = argument[6];
    case 6:
      debug_got = argument[5];
    case 5:
      msg = argument[4];
    case 4:
    break;
    default:
      show_error("Expected 4-7 arguments, got " + string(argument_count) + ".", true);
    break;
  }
  
  //Check assertion
  if (!(argument[3] ^^ script_execute(argument[2], argument[0], argument[1]))) {
    __gma_assert_error_raw__(msg, script_execute(debug_expected, argument[1]), script_execute(debug_got, argument[0]));
  }
}
