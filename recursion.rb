## This is a collection of challenges that uses recurrsion for their solution

def reverse_string(str)
  return '' if str.length == 0
  return reverser(str[1..-1]) + str[0]
end

def palindrome(str)
  return true if str.length == 1 || str.length == 0
  if (str[0] == str[-1])
    pali(str[1..-2])
  else
    return false
  end
end

def decimal_to_binary(num, tot = '')
  if num < 1
    return tot.reverse.to_i
  else
    bina(num/2, tot += (num%2).to_s)
  end
end

def sum_natural_numbers(num)
  return num if num == 0
  return num + sum_natural_numbers(num-1)
end

def factorial(num)
  return 1 if num == 1 || num == 0
  return num * factorial(num-1)
end
