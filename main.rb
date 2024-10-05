# frozen_string_literal: true

require_relative './caesar_cipher'

print 'Enter a text to be ciphered: '
original = gets.chomp
print 'Enter the number of shifts: '
shift_by = gets.chomp.to_i
puts "original: #{original}"
ciphered = CaesarCipher.new(original, shift_by).cipher
puts "ciphered: #{ciphered}"
