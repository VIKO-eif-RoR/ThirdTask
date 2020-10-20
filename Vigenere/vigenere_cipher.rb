# frozen_string_literal: false

# Vigenere encryption and decryption class
class VigenereCipher
  BASE = 'A'.ord
  SIZE = 'Z'.ord - BASE + 1
  # Encryption method
  def encrypt(text, key)
    text_ch = crypt_one(text)
    key_iterator = crypt_two(key)
    crypt(text_ch, key_iterator, :+)
  end

  # Decryption method
  def decrypt(text, key)
    text_ch = crypt_one(text)
    key_iterator = crypt_two(key)
    crypt(text_ch, key_iterator, :-)
  end

  # Cryption method
  def crypt(text, key_iterator, dir)
    text.each_char.inject('') do |ciphertext, char|
      offset = key_iterator.next
      ciphertext << ((char.ord - BASE).send(dir, offset) % SIZE + BASE).chr
    end
  end

  # Changing text to upcase
  def crypt_one(text)
    text.upcase.gsub(/[^A-Z]/, '')
  end

  # Chabging key to upcase
  def crypt_two(key)
    key.upcase.gsub(/[^A-Z]/, '').chars.map { |c| c.ord - BASE }.cycle
  end
end
