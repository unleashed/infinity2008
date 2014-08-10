module Infinity2008
  RSpec.describe 'Integration' do
    let(:me) { Me }
    let(:you) { You }
    let(:duration) { Song::Duration }

    it 'will take time' do
      slept = 0
      allow_any_instance_of(Kernel).to receive(:sleep) do |_, secs|
        slept += secs
        secs
      end
      me.new.infinity(you.new) 
      expect(slept).to be >= duration
    end

    context You do
      let(:infinity) { INFINITY }

      subject do
        you.new.tap do |you|
          duration.times { you.trust.in? me }
        end
      end

      it 'will find infinity' do
        expect(subject).to receive(:find).with(infinity)
        me.new.infinity subject
      end

      it 'will receive infinity' do
        expect(subject).to receive(infinity)
        me.new.infinity subject
      end
    end
  end
end
