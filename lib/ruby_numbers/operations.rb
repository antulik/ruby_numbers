module RubyNumbers::Operations
  OPERATION_TYPES = {
    plus:       :+,
    minus:      :-,
    times:      :*,
    divided_by: :/,
  }

  def generic_operation(number)
    operation_for OPERATION_TYPES[__callee__], number
  end

  def operation_for(type, number)
    RubyNumbers::Operation.new(type, number)
  end

  alias plus generic_operation
  alias minus generic_operation
  alias times generic_operation
  alias divided_by generic_operation
end
