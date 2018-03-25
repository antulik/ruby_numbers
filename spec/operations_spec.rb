RSpec.describe RubyNumbers::Operations do
  let(:klass) { Class.new { extend RubyNumbers::Operations } }

  describe '#plus' do
    it 'returns operation' do
      expect(klass.plus(1)).to be_a RubyNumbers::Operation
    end

    it 'has "+" type' do
      expect(klass.plus(1).type).to eq :+
    end
  end

  describe '#minus' do
    it 'returns operation' do
      expect(klass.minus(1)).to be_a RubyNumbers::Operation
    end

    it 'has "-" type' do
      expect(klass.minus(1).type).to eq :-
    end
  end

  describe '#divided_by' do
    it 'returns operation' do
      expect(klass.divided_by(1)).to be_a RubyNumbers::Operation
    end

    it 'has "/" type' do
      expect(klass.divided_by(1).type).to eq :/
    end
  end

  describe '#times' do
    it 'returns operation' do
      expect(klass.times(1)).to be_a RubyNumbers::Operation
    end

    it 'has "*" type' do
      expect(klass.times(1).type).to eq :*
    end
  end
end
