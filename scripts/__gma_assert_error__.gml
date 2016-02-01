///__gma_assert_error__(message, expected, got)
{
  switch (GMASSERT_MODE) {
    case GMASSERT_MODE_SELFTEST:
      global.__gma_assert_triggered__ = true;
    break;
    case GMASSERT_MODE_ENABLED:
      show_error(argument0 + chr(13)+chr(10) + chr(13)+chr(10) + "Expected: " + __gma_debug_value__(argument1) + chr(13)+chr(10) + chr(13)+chr(10) + "Got: " + __gma_debug_value__(argument2) + chr(13)+chr(10) + chr(13)+chr(10), true);
    break;
  }
}
