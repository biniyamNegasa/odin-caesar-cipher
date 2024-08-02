def is_alp(ch)
  if (ch <= 'Z' && ch >= 'A') 
    return 1
  end

  if (ch <= 'z' && ch >= 'a')
    return 0
  end
  -1
end

def caesar_cipher(text, shift_factor)
  text_array = text.split('')
  ciphered = []
  a_cap = "A".ord
  a = "a".ord

  text_array.each do |ch|
    val = is_alp(ch)
    ascii_code = ch.ord
    if val == 1
      curr = a_cap + ((ascii_code-a_cap) + shift_factor) % 26
      ciphered.push(curr.chr)
    elsif val == 0
      curr = a + ((ascii_code-a) + shift_factor) % 26
      ciphered.push(curr.chr)
    else
      ciphered.push(ch)
    end
  end
  return ciphered.join
end

puts caesar_cipher("What a string!", 5)