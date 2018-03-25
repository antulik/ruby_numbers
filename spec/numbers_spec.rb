RSpec.describe RubyNumbers::Numbers do
  let(:klass) { Class.new { extend RubyNumbers::Numbers } }

  describe '#one' do
    it "returns 1" do
      expect(klass.one).to eq 1
    end
  end
end
