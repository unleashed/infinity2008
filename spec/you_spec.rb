module Infinity2008
  RSpec.describe You do
    let(:me) { Me }
    let(:duration) { Song::Duration }

    it 'can relax!' do
      expect { subject.relax! }.not_to raise_error
    end

    it 'can take his time' do
      expect { subject.time }.not_to raise_error
    end

    context 'trust' do
      it 'can trust' do
        expect { subject.trust }.not_to raise_error
      end

      it 'can trust or not in someone' do
        expect(subject.trust).to respond_to(:in?)
      end

      it 'does not trust in me' do
        expect(subject.trust.in? me).to be(false)
      end

      it 'after some time does not trust in me' do
        (duration - 1).times do
          expect(subject.trust.in? me).to be(false)
        end
      end

      it 'after some more time trusts in me' do
        duration.times { subject.trust.in? me }
        expect(subject.trust.in? me).to be(true)
      end
    end
  end
end
