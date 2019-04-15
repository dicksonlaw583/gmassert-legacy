///__gma_assert_error__(message, expected, got)
{
  if (GMASSERT_ENABLED && asset_get_index("__GMA_BREAKPOINT__") != -1 && !__GMA_BREAKPOINT__(argument0, argument2, argument1)) {
    var msg = argument0 + chr(13)+chr(10) + chr(13)+chr(10) + "Expected: " + __gma_debug_value__(argument1) + chr(13)+chr(10) + chr(13)+chr(10) + "Got: " + __gma_debug_value__(argument2) + chr(13)+chr(10) + chr(13)+chr(10);
    if (os_browser == browser_not_a_browser) {
      show_error(msg, true);
    }
    else {
      show_message(msg);
    }
  }
}
