{
  var type = __gma_debug_type__(argument0);
  if (type == __gma_debug_type__(argument1)) {
    switch (type) {
      case GMASSERT_TYPE_REAL:
        return argument0 >= argument1;
      break;
      case GMASSERT_TYPE_STRING:
        if (argument0 == argument1) return true;
        var len0 = string_length(argument0),
            len1 = string_length(argument1),
            len = min(len0, len1);
        var c0, c1;
        for (var i = 1; i <= len; i++) {
          c0 = ord(string_char_at(argument0, i));
          c1 = ord(string_char_at(argument1, i));
          if (c0 != c1) {
            return c0 > c1;
          }
        }
        return len0 > len1;
      break;
      case GMASSERT_TYPE_ARRAY:
        var size_i = array_height_2d(argument0);
        if (size_i != array_height_2d(argument1)) return false;
        var size_j;
        for (var i = 0; i < size_i; i++) {
          size_j = array_length_2d(argument0, i);
          if (size_j != array_length_2d(argument1, i)) return false;
          for (var j = 0; j < size_j; j++) {
            if (!__gma_greater_than_or_equal__(argument0[@ i, j], argument1[@ i, j])) return false;
          }
        }
        return true;
      break;
      default:
        return false;
      break;
    }
  }
  else {
    return false;
  }
}
