var add;

add = function(numbers) {
  var number, result, _i, _len, _ref;
  if (numbers) {
    numbers = numbers.replace(/\n/g, ',');
    result = 0;
    _ref = numbers.split(',');
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      number = _ref[_i];
      result += parseInt(number);
    }
    return result;
  } else {
    return 0;
  }
};
