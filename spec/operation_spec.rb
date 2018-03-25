RSpec.describe RubyNumbers::Operation do
  it 'stores operation type' do
    operation = described_class.new(:+, 1)

    expect(operation.type).to eq :+
  end

  it 'stores operation number' do
    operation = described_class.new(:+, 1)

    expect(operation.number).to eq 1
  end
end
