///__gma_assert_error_simple__(message, got)
{
  if (GMASSERT_MODE && asset_get_index("__GMA_BREAKPOINT__") != -1 && !__GMA_BREAKPOINT__(argument0, argument1, "")) {
    var msg = argument0 + chr(13) + chr(13);
    if (os_browser == browser_not_a_browser) {
      show_error(msg, true);
    }
    else {
      show_message(msg);
    }
  }
}
