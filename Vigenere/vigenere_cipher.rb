# frozen_string_literal: false

# Vigenere encryption and decryption class
class VigenereCipher
  BASE = 'A'.ord
  SIZE = 'Z'.ord - BASE + 1
  # Encryption method
  def encrypt(text, key)
    crypt(text, key, :+)
  end

  # Decryption method
  def decrypt(text, key)
    crypt(text, key, :-)
  end

  # Cryption method
  def crypt(text, key, dir)
    text = text.upcase.gsub(/[^A-Z]/, '')
    key_iterator = key.upcase.gsub(/[^A-Z]/, '').chars.map { |c| c.ord - BASE }.cycle
    text.each_char.inject('') do |ciphertext, char|
      offset = key_iterator.next
      ciphertext << ((char.ord - BASE).send(dir, offset) % SIZE + BASE).chr
    end
  end
end
