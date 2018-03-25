module RubyNumbers::Numbers
  NUMBERS_MAP = {
    one:   1,
    two:   2,
    three: 3,
    four:  4,
    five:  5,
    six:   6,
    seven: 7,
    eight: 8,
    nine:  9,
    zero:  0,
  }.freeze

  def perform_operation(number, operation)
    if operation
      number.public_send(operation.type, operation.number)
    else
      number
    end
  end

  def generic_number(operation = nil)
    perform_operation NUMBERS_MAP.fetch(__callee__), operation
  end

  alias one generic_number
  alias two generic_number
  alias three generic_number
  alias four generic_number
  alias five generic_number
  alias six generic_number
  alias seven generic_number
  alias eight generic_number
  alias nine generic_number
  alias zero generic_number
end
