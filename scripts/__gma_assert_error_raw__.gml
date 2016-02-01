///__gma_assert_error_raw__(message, expected, got)
{
  switch (GMASSERT_MODE) {
    case GMASSERT_MODE_SELFTEST:
      global.__gma_assert_triggered__ = true;
    break;
    case GMASSERT_MODE_ENABLED:
      show_error(argument0 + chr(13) + chr(13) + "Expected: " + argument1 + chr(13) + chr(13) + "Got: " + argument2 + chr(13) + chr(13), true);
    break;
  }
}
