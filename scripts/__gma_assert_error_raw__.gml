///__gma_assert_error_raw__(message, expected, got)
{
  if (GMASSERT_MODE && asset_get_index("__GMA_BREAKPOINT__") != -1 && !__GMA_BREAKPOINT__(argument0, argument2, argument1)) {
    var msg = argument0 + chr(13) + chr(13) + "Expected: " + argument1 + chr(13) + chr(13) + "Got: " + argument2 + chr(13) + chr(13);
    if (os_browser == browser_not_a_browser) {
      show_error(msg, true);
    }
    else {
      show_message(msg);
    }
  }
}
