#include Caesar class
require_relative "Caesar.rb"
#new object creation 
cipher = Caesar.new 

#call encrypt def
encrypt = (cipher.encrypt("Hello world", 5))
#call decrypt def 
decrypt = (cipher.decrypt(encrypt, 5))
#print results
puts(encrypt)
puts(decrypt)
