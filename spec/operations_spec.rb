RSpec.describe RubyNumbers::Operations do
  let(:klass) { Class.new { extend RubyNumbers::Operations } }

  describe '#plus' do
    it 'returns operation' do
      expect(klass.plus(1)).to be_a RubyNumbers::Operation
    end
  end
end
