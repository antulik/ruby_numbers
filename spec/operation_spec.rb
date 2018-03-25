RSpec.describe RubyNumbers::Operation do
  it 'stores operation type' do
    operation = described_class.new(:+, 1)

    expect(operation.type).to eq :+
  end
end
