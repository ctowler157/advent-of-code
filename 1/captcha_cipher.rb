def captcha_cipher(captcha)
  half = captcha.length / 2
  num_strings = captcha.split('')
  cipher = num_strings.drop(half).concat(num_strings.take(half))
  sum = 0
  num_strings.each_with_index do |n_string, i|
    if n_string == cipher[i]
      sum += n_string.to_i
    end
  end

  sum
end
