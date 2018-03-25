module RubyNumbers::Numbers
  def one(operation = nil)
    perform_operation(1, operation)
  end

  def two(operation = nil)
    perform_operation(2, operation)
  end

  def three(operation = nil)
    perform_operation(3, operation)
  end

  def four(operation = nil)
    perform_operation(4, operation)
  end

  def five(operation = nil)
    perform_operation(5, operation)
  end

  def six(operation = nil)
    perform_operation(6, operation)
  end

  def seven(operation = nil)
    perform_operation(7, operation)
  end

  def eight(operation = nil)
    perform_operation(8, operation)
  end

  def nine(operation = nil)
    perform_operation(9, operation)
  end

  def zero(operation = nil)
    perform_operation(0, operation)
  end

  def perform_operation(number, operation)
    if operation
      number.public_send(operation.type, operation.number)
    else
      number
    end
  end
end
