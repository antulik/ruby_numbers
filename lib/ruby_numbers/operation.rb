class RubyNumbers::Operation
  attr_reader :type, :number

  def initialize(type, number)
    @type = type
    @number = number
  end
end
