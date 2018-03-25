module RubyNumbers::Numbers
  def one(operation = nil)
    perform_operation(1, operation)
  end

  def two(operation = nil)
    perform_operation(2, operation)
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

  def perform_operation(number, operation)
    if operation
      number.public_send(operation.type, operation.number)
    else
      number
    end
  end
end
