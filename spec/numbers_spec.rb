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
    it_behaves_like 'number', 3 do
      subject { klass.method(:three) }
    end
  end

  describe '#four' do
    it_behaves_like 'number', 4 do
      subject { klass.method(:four) }
    end
  end

  describe '#five' do
    it_behaves_like 'number', 5 do
      subject { klass.method(:five) }
    end
  end

  describe '#six' do
    it_behaves_like 'number', 6 do
      subject { klass.method(:six) }
    end
  end

  describe '#seven' do
    it_behaves_like 'number', 7 do
      subject { klass.method(:seven) }
    end
  end

  describe '#eight' do
    it_behaves_like 'number', 8 do
      subject { klass.method(:eight) }
    end
  end

  describe '#nine' do
    it_behaves_like 'number', 9 do
      subject { klass.method(:nine) }
    end
  end

  describe '#zero' do
    it_behaves_like 'number', 0 do
      subject { klass.method(:zero) }
    end
  end
end
