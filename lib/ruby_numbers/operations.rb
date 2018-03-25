module RubyNumbers::Operations
  def plus(number)
    operation_for(:+, number)
  end

  def minus(number)
    operation_for(:-, number)
  end

  def divided_by(number)
    operation_for(:/, number)
  end

  def times(number)
    operation_for(:*, number)
  end

  def operation_for(type, number)
    RubyNumbers::Operation.new(type, number)
  end
end
