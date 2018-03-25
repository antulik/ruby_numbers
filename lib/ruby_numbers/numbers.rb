module RubyNumbers::Numbers
  LIST = %i[zero one two three four five six seven eight nine].freeze

  LIST.each_with_index do |type, numeric|
    define_method type do |operation = nil|
      if operation
        numeric.public_send(operation.type, operation.number)
      else
        numeric
      end
    end
  end
end
