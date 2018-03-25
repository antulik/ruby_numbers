RSpec.describe RubyNumbers::Numbers do
  let(:klass) { Class.new { extend RubyNumbers::Numbers } }

  describe '#one' do
    it 'returns 1' do
      expect(klass.one).to eq 1
    end

    it 'accepts plus 1 operation and returns 2' do
      operation = RubyNumbers::Operation.new(:+, 1)

      expect(klass.one(operation)).to eq 2
    end

    it 'accepts minus 2 operation and returns -1' do
      operation = RubyNumbers::Operation.new(:-, 2)

      expect(klass.one(operation)).to eq(-1)
    end

    it 'accepts times 5 operation and returns 5' do
      operation = RubyNumbers::Operation.new(:*, 5)

      expect(klass.one(operation)).to eq 5
    end

    it 'accepts divided_by 0 operation and raises error' do
      operation = RubyNumbers::Operation.new(:/, 0)

      expect { klass.one(operation) }.to raise_exception(ZeroDivisionError)
    end
  end

  describe '#two' do
    it 'returns 2' do
      expect(klass.two).to eq 2
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
