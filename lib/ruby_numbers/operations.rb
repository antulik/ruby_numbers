module RubyNumbers::Operations
  TYPES = {
    plus:       :+,
    minus:      :-,
    times:      :*,
    divided_by: :/,
  }.freeze

  TYPES.each do |type_name, type|
    define_method type_name do |number|
      RubyNumbers::Operation.new(type, number)
    end
  end
end
