RSpec.describe RubyNumbers::Numbers do
  let(:klass) { Class.new { extend RubyNumbers::Numbers } }

  shared_examples 'number with operation' do |operation, other_number, result|
    it "#{operation} #{other_number} = #{result}" do
      operation = RubyNumbers::Operation.new(operation, other_number)

      expect(subject.call(operation)).to eq result
    end
  end

  shared_examples 'number' do |numeric|
    it 'returns its numeric equivalent' do
      expect(subject.call).to eq numeric
    end

    it_behaves_like 'number with operation', :+, 1, (numeric + 1)
    it_behaves_like 'number with operation', :-, 2, (numeric - 2)
    it_behaves_like 'number with operation', :*, 5, (numeric * 5)
    it_behaves_like 'number with operation', :/, -7, (numeric / -7)

    it 'accepts divided_by 0 operation and raises error' do
      operation = RubyNumbers::Operation.new(:/, 0)

      expect { subject.call(operation) }.to raise_exception(ZeroDivisionError)
    end
  end

  describe '#one' do
    it_behaves_like 'number', 1 do
      subject { klass.method(:one) }
    end
  end

  describe '#two' do
    it_behaves_like 'number', 2 do
      subject { klass.method(:two) }
    end
  end

  describe '#three' do
    it 'returns 3' do
      expect(klass.three).to eq 3
    end
  end

  describe '#four' do
    it 'returns 4' do
      expect(klass.four).to eq 4
    end
  end

  describe '#five' do
    it 'returns 5' do
      expect(klass.five).to eq 5
    end
  end

  describe '#six' do
    it 'returns 6' do
      expect(klass.six).to eq 6
    end
  end

  describe '#seven' do
    it 'returns 7' do
      expect(klass.seven).to eq 7
    end
  end

  describe '#eight' do
    it 'returns 8' do
      expect(klass.eight).to eq 8
    end
  end

  describe '#nine' do
    it 'returns 9' do
      expect(klass.nine).to eq 9
    end
  end

  describe '#zero' do
    it 'returns 0' do
      expect(klass.zero).to eq 0
    end
  end
end
