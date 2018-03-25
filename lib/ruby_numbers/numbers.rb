module RubyNumbers::Numbers
  def one(operation = nil)
    if operation
      1.public_send(operation.type, operation.number)
    else
      1
    end
  end

  def two
    2
  end

  def three
    3
  end

  def four
    4
  end

  def five
    5
  end

  def six
    6
  end

  def seven
    7
  end

  def eight
    8
  end

  def nine
    9
  end

  def zero
    0
  end
end
