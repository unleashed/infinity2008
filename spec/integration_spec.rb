module Infinity2008
  RSpec.describe 'Integration' do
    let(:me) { Me }
    let(:you) { You }
    let(:duration) { Song::Duration }

    context Song do
      describe '.sing' do
        it 'will take time' do
          slept = 0
          allow_any_instance_of(Kernel).to receive(:sleep) do |_, secs|
            slept += secs
            secs
          end
          Song.sing
          expect(slept).to be >= duration
        end

        it 'writes to standard output' do
          allow_any_instance_of(Kernel).to receive(:sleep)
          expect($stdout).to receive(:puts).at_least(:once)
          Song.sing
        end
      end
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
