# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe CaesarCipher do
  subject(:cipher_now) { described_class.new('whatever, come now? haha', 99) }
  describe '#shift_by' do
    describe 'When shift factor is positive' do
      context 'When shift factor is small' do
        subject(:cipher_pos_small) { described_class.new('', 4) }
        it 'will work with small numbers' do
          expect(cipher_pos_small.shift_by('a', 'h')).to eq('l')
        end
      end
      context 'When shift factor is large' do
        subject(:cipher_pos_small) { described_class.new('', 188) }
        it 'will work with small numbers' do
          expect(cipher_pos_small.shift_by('a', 'h')).to eq('n')
        end
      end
    end
    describe 'When shift factor is negative' do
      context 'When shift factor is small' do
        subject(:cipher_pos_small) { described_class.new('', -4) }
        it 'will work with small numbers' do
          expect(cipher_pos_small.shift_by('a', 'h')).to eq('d')
        end
      end
      context 'When shift factor is large' do
        subject(:cipher_pos_small) { described_class.new('', -188) }
        it 'will work with small numbers' do
          expect(cipher_pos_small.shift_by('a', 'h')).to eq('b')
        end
      end
    end
  end

  describe '#alphabet?' do
    subject(:caesar_alphabet) {described_class.new('', 0)}
    context 'When it is an alphabet' do
      it 'works with small letters' do
        expect(caesar_alphabet.alphabet?('a')).to be(true)
        expect(caesar_alphabet.alphabet?('z')).to be(true)
        expect(caesar_alphabet.alphabet?('h')).to be(true)
        expect(caesar_alphabet.alphabet?('i')).to be(true)
      end
      it 'works with capital letters' do
        expect(caesar_alphabet.alphabet?('A')).to be(true)
        expect(caesar_alphabet.alphabet?('Z')).to be(true)
        expect(caesar_alphabet.alphabet?('B')).to be(true)
        expect(caesar_alphabet.alphabet?('J')).to be(true)
      end
    end
    context 'When it is not an alphabet' do
      it "doesn't work with numbers" do
        expect(caesar_alphabet.alphabet?('8')).to be(false)
      end
      it "doesn't work with symbols" do
        expect(caesar_alphabet.alphabet?('.')).to be(false)
        expect(caesar_alphabet.alphabet?('/')).to be(false)
        expect(caesar_alphabet.alphabet?(']')).to be(false)
      end
    end
  end

  describe '#capital?' do
  end
end
