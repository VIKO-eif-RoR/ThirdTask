#Including VigeneCipher class
require_relative "VigenereCipher.rb"

#Creating new object
cipher = VigenereCipher.new

#Encryption
puts("Encrypted word:")
puts(cipher.encrypt("Hello", "key"))

#Decryption
puts("Decrypted word:")
puts(cipher.decrypt(cipher.encrypt("Hello", "key"), "key"))