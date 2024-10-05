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
  end

  describe '#capital?' do
  end
end
