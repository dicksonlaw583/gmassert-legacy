///test_fixture_array2(row_width, ...)
{
  var arr;
  for (var i = 0; i < argument_count-1; i++) {
    arr[i div argument[0], i mod argument[0]] = argument[i+1];
  }
  return arr;
}
