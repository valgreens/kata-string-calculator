describe 'String-Calculator', ->

  it 'should return 0 when the string is empty', ->
    expect(add('')).toBe(0)

  it 'should return 1 when the string is 1', ->
    expect(add('1')).toBe(1)

  it 'should return a single number', ->
    expect(add('7')).toBe(7)

  it 'should return 3 when the string is 1,2', ->
    expect(add('1,2')).toBe(3)

  it 'should return 5 when the string is 2,3', ->
    expect(add('2,3')).toBe(5)

  it 'should handle unknown amount of numbers', ->
    expect(add('1,2,3')).toBe(6)

  it 'should handle new lines between numbers', ->
    expect(add("1\n2,3")).toBe(6)
    expect(add("1\n2\n3")).toBe(6)
