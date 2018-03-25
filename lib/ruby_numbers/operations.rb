module RubyNumbers::Operations
  def plus(number)
    RubyNumbers::Operation.new(:+, number)
  end

  def minus(number)
    RubyNumbers::Operation.new(:+, number)
  end

  def divided_by(number)
    RubyNumbers::Operation.new(:+, number)
  end

  def times(number)
    RubyNumbers::Operation.new(:+, number)
  end
end
