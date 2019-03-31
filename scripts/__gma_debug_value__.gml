///__gma_debug_value__(val, [noprefix])
{
  var type = typeof(argument[0]);
  var dv;
  switch (type) {
    case "number":
      //Return integers as-is
      if (frac(argument[0]) == 0) {
        dv = string(argument[0]);
      }
      //Get mantissa and exponent
      else {
        var mantissa, exponent;
        exponent = floor(log10(abs(argument[0])));
        mantissa = string_replace_all(string_format(argument[0]/power(10,exponent), 15, 14), " ", "");
        //Trim trailing zeros off mantissa
        var i, ca;
        i = string_length(mantissa);
        do {
          ca = string_char_at(mantissa, i);
          i -= 1;
        } until (ca != "0")
        if (ca != ".") {
          mantissa = string_copy(mantissa, 1, i+1);
        }
        else {
          mantissa = string_copy(mantissa, 1, i);
        }
        //Add exponent except if it is zero
        if (exponent != 0) {
          dv = mantissa + "e" + string(exponent);
        }
        else {
          dv = mantissa;
        }
      }
    break;
    case "string":
      dv = '"' + string_replace_all(argument[0], '"', '""') + '"';
    break;
    case "array":
      var size;
      var result = "",
          arr = argument[0],
          height = array_height_2d(arr);
      //1D
      if (height == 1) {
        size = array_length_1d(arr)
        for (var i = 0; i < size; i++) {
          result += __gma_debug_value__(arr[i], true);
          if (i < size-1) {
            result += ", ";
          }
        }
      }
      //2D
      else {
        for (var i = 0; i < height; i++) {
          size = array_length_2d(arr, i);
          for (var j = 0; j < size; j++) {
            result += __gma_debug_value__(arr[i, j], true);
            if (j < size-1) {
              result += ", ";
            }
          }
          if (i < height-1) {
            result += "; ";
          }
        }
      }
      dv = "[" + result + "]";
    break;
    case "bool":
      if (argument[0]) {
        dv = "true";
      } else {
        dv = "false";
      }
    break;
    case "int32":
    case "int64":
    case "ptr":
      dv = string(argument[0]);
    break;
    case "undefined":
    case "null":
    case "unknown":
      dv = "";
    break;
    case "vec3":
      dv = string(argument[0]);
    break;
    case "vec4":
      dv = string(argument[0]);
    break;
  }
  
  if (argument_count > 1 && argument[1]) {
    return dv;
  }
  return "(" + type + ")" + chr(13)+chr(10) + dv;
}
