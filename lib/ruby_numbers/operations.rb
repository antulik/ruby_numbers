module RubyNumbers::Operations
  def plus(number)
    RubyNumbers::Operation.new(:+, number)
  end
end
