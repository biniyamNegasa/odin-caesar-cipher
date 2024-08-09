def alp?(character)
  return 1 if character <= 'Z' && character >= 'A'

  return 0 if character <= 'z' && character >= 'a'

  -1
end

def caesar_cipher(text, shift_factor)
  text_array = text.split('')
  ciphered = []
  a_cap = 'A'.ord
  a = 'a'.ord

  text_array.each do |ch|
    val = alp?(ch)
    ascii_code = ch.ord
    if val == 1
      curr = a_cap + ((ascii_code - a_cap) + shift_factor) % 26
      ciphered.push(curr.chr)
    elsif val.zero?
      curr = a + ((ascii_code - a) + shift_factor) % 26
      ciphered.push(curr.chr)
    else
      ciphered.push(ch)
    end
  end
  ciphered.join
end

print 'Enter a text to be ciphered: '
original = gets.chomp
print 'Enter the number of shifts: '
shift_by = gets.chomp.to_i
puts "original: #{original}"
puts "ciphered: #{caesar_cipher(original, shift_by)}"
