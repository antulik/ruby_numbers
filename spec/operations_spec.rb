RSpec.describe RubyNumbers::Operations do
  let(:klass) { Class.new { extend RubyNumbers::Operations } }

  shared_examples 'operation' do |type|
    it 'returns operation' do
      expect(subject.call(1)).to be_a RubyNumbers::Operation
    end

    it 'returns operation with valid type' do
      expect(subject.call(1).type).to eq type
    end

    it 'returns operation with the same number' do
      expect(subject.call(-3).number).to eq(-3)
    end
  end

  describe '#plus' do
    it_behaves_like 'operation', :+ do
      subject { klass.method(:plus) }
    end
  end

  describe '#minus' do
    it_behaves_like 'operation', :- do
      subject { klass.method(:minus) }
    end
  end

  describe '#divided_by' do
    it_behaves_like 'operation', :/ do
      subject { klass.method(:divided_by) }
    end
  end

  describe '#times' do
    it_behaves_like 'operation', :* do
      subject { klass.method(:times) }
    end
  end
end
