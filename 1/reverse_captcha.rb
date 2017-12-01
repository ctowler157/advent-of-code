def reverse_captcha(captcha)
  sum = 0
  previous = nil
  num_strings = captcha.split('')
  num_strings << num_strings[0]

  num_strings.each do |n_string|
    num = n_string.to_i
    if previous && previous == num
      sum += num
    end
    previous = num
  end

  sum
end
