RSpec.describe RubyNumbers do
  it "has a version number" do
    expect(RubyNumbers::VERSION).not_to be nil
  end

  context 'matches given requirements' do
    include RubyNumbers::Numbers
    include RubyNumbers::Operations

    it 'returns 30 for six(times(five))' do
      expect(
        six(times(five))
      ).to eq 30
    end

    it 'returns 10 for one(plus(nine))' do
      expect(
        one(plus(nine))
      ).to eq 10
    end

    it 'returns 3 for six(minus(three))' do
      expect(
        six(minus(three))
      ).to eq 3
    end

    it 'returns 4 for eight(divided_by(two))' do
      expect(
        eight(divided_by(two))
      ).to eq 4
    end
  end
end
