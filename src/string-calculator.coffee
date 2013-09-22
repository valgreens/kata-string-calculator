add = (numbers) ->
  if numbers 
    numbers = numbers.replace(/\n/g, ',')
    result = 0
    result += parseInt(number) for number in numbers.split(',')
    return result
  else
    return 0
