{
  var message = argument[0],
      got = argument[1],
      expected = argument[2];
  
  // This is for the self-test only
  // Extension copy has a blank line here instead
  global.__gma_assert_triggered__ = true;
  
  return true;
}
