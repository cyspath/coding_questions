#Full stack test at HackerRank

arr = [7,9,5,6,3,2]

def max_diff(a)
  return -1 if a.length < 2
  has_higher_max = false

  max_diff = a[1] - a[0]
  min = a[0]

  i = 0
  while i < a.length
    if a[i] < min
      min = a[i]
    else
      has_higher_max = true if a[i] > min
      if a[i] - min > max_diff
        max_diff = a[i] - min
      end
    end
    i += 1
  end

  if has_higher_max
    return max_diff
  else
    return -1
  end

end

p max_diff(arr)


str = 'aaabbbbcccccdefg'

def compress(str)
  new_str = ''
  i = 0
  current_letter = str[0]
  count = 0
  while i < str.length
    if str[i] == current_letter
      count += 1
    end

    if str[i] != current_letter
      new_str += current_letter
      new_str += count.to_s if count > 1
      current_letter = str[i]
      count = 1
    end
    i += 1
  end

  new_str += current_letter
  new_str += count.to_s if count > 1


  return new_str
end

p compress(str) # "a3b4c5def"


#  SQL PROBLEMS:
#
# find number of language with over 10000 users
# SELECT COUNT(*)
# FROM LANGUAGE
# WHERE USERS > 10000
#
#
# print all names of employee which first employee salary is less than second employee
#
# SELECT
# first.Name, second.Name
# FROM
# employees AS first
#
# JOIN employees AS second
#
# ON first.Salary < second.Salary


# javascript
#
# function foo1() {
#   return { bar: 'hello' }
# }
# function foo2() {
#   return { bar: 'hello'}
# }
#
# will they return the same thing? I said no


# CSS
#
# resize: horizontal;
# overflow: auto;
#
# makes an object resizable by user!!
