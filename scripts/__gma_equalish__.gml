{
  var type = typeof(argument0);
  if (type == typeof(argument1)) {
    switch (type) {
      case "array":
        var a1d = array_height_2d(argument0) == 1,
            b1d = array_height_2d(argument1) == 1;
        if (a1d != b1d) return false;
        if (a1d) {
          var size = array_length_1d(argument0);
          if (size != array_length_1d(argument1)) return false;
          for (var i = 0; i < size; i++) {
            if (!__gma_equalish__(argument0[@ i], argument1[@ i])) return false;
          }
        }
        else {
          var size_i = array_height_2d(argument0);
          if (size_i != array_height_2d(argument1)) return false;
          var size_j;
          for (var i = 0; i < size_i; i++) {
            size_j = array_length_2d(argument0, i);
            if (size_j != array_length_2d(argument1, i)) return false;
            for (var j = 0; j < size_j; j++) {
              if (!__gma_equalish__(argument0[@ i, j], argument1[@ i, j])) return false;
            }
          }
        }
        return true;
      break;
      case "number":
        return argument0 == argument1 || abs(argument0-argument1) <= GMASSERT_TOLERANCE;
      break;
      default:
        return argument0 == argument1;
      break;
    }
  }
  else {
    return false;
  }
}
