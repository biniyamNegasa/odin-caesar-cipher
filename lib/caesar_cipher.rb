# frozen_string_literal: false

# A ciphering class
class CaesarCipher
  def initialize(text, shift_factor)
    @original = text
    @shift_factor = shift_factor
  end

  def cipher
    ciphered = ''

    @original.each_char do |char|
      ciphered << (if alphabet?(char)
                     capital?(char) ? shift_by('A', char) : shift_by('a', char)
                   else
                     char
                   end)
    end
    ciphered
  end

  def shift_by(base, char)
    base_ascii = base.ord
    char_ascii = char.ord
    order = base_ascii + ((char_ascii - base_ascii) + @shift_factor) % 26
    order.chr
  end

  def capital?(char)
    char.between?('A', 'Z')
  end

  def alphabet?(char)
    char.between?('A', 'Z') || char.between?('a', 'z')
  end
end
