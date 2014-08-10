module Infinity2008
  RSpec.describe Me do
    let(:freak) { Freak }

    it 'is a freak' do
      expect(subject).to be_a(freak)
    end

    it 'has philosophy as key' do
      expect(subject.key).to match(/\bphilosophy\b/)
    end

    it 'needs infinity' do
      expect(subject.needs).to match(/\binfinity\b/)
    end
  end
end
