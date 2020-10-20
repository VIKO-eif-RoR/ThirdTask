# frozen_string_literal: true

# letterswap class
class String
  def upper?
    self == upcase
  end

  def lower?
    self == downcase
  end

  def head
    self[0]
  end

  def tail
    self[1..-1]
  end

  def swapcase
    if empty?
      ''
    elsif head.lower?
      head.upcase + tail.swapcase
    elsif head.upper?
      head.downcase + tail.swapcase
    else
      head + tail.swapcase
    end
  end
end

# puts("uppercaseLOWERCASE".swapcase)
