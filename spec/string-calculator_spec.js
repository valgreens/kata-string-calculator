describe('String-Calculator', function() {
  it('should return 0 when the string is empty', function() {
    return expect(add('')).toBe(0);
  });
  it('should return 1 when the string is 1', function() {
    return expect(add('1')).toBe(1);
  });
  it('should return a single number', function() {
    return expect(add('7')).toBe(7);
  });
  it('should return 3 when the string is 1,2', function() {
    return expect(add('1,2')).toBe(3);
  });
  it('should return 5 when the string is 2,3', function() {
    return expect(add('2,3')).toBe(5);
  });
  it('should handle unknown amount of numbers', function() {
    return expect(add('1,2,3')).toBe(6);
  });
  return it('should handle new lines between numbers', function() {
    expect(add("1\n2,3")).toBe(6);
    return expect(add("1\n2\n3")).toBe(6);
  });
});
