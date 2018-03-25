require "ruby_numbers/version"
require "ruby_numbers/numbers"
require "ruby_numbers/operation"
require "ruby_numbers/operations"

module RubyNumbers
  include RubyNumbers::Numbers
  include RubyNumbers::Operations
end
