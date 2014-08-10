module Infinity2008
  RSpec.describe Freak do
    subject { Freak }

    it 'has a key' do
      expect(subject).to respond_to(:key)
    end

    it 'has needs' do
      expect(subject).to respond_to(:needs)
    end
  end
end
