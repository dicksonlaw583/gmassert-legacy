///gma_test_all()
{
  //Initialize tracking variables
  global.__gma_case_count__ = 0;
  global.__gma_fail_count__ = 0;
  global.__gma_assert_triggered__ = false;
  global.__gma_test_time__ = 0;
  
  //Start timer
  global.__gma_test_time_start__ = current_time;
  
  //TESTS
  __gma_test_debug_type__();
  __gma_test_debug_value__();
  if (GMASSERT_MODE == GMASSERT_MODE_SELFTEST) {
    __gma_test_trigger_messages__();
  }
  
  //Print result
  if (GMASSERT_MODE != GMASSERT_MODE_SELFTEST) {
    show_debug_message("Notice: Trigger tests not run. Enable by setting GMASSERT_MODE to GMASSERT_MODE_SELFTEST.");
  }
  show_debug_message(string(global.__gma_case_count__) + " tests completed in " + string(current_time-global.__gma_test_time_start__) + "ms.");
  show_debug_message(string(global.__gma_case_count__-global.__gma_fail_count__) + " passed, " + string(global.__gma_fail_count__) + " failed (" + string((1-global.__gma_fail_count__/global.__gma_case_count__)*100) + "%)");
  game_end();
}
