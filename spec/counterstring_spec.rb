require 'spec_helper'

describe Counterstring do
  it 'has a version number' do
    expect(Counterstring::VERSION).not_to be nil
  end

  describe '#to_s' do
    subject { Counterstring.new(length).to_s }

    context 'with length 0' do
      let(:length) { 0 }

      it { is_expected.to eq '' }
    end

    context 'with length 1' do
      let(:length) { 1 }

      it { is_expected.to eq '1' }
    end

    context 'with length 2' do
      let(:length) { 2 }

      it { is_expected.to eq '1*' }
    end

    context 'with length 3' do
      let(:length) { 3 }

      it { is_expected.to eq '1*3' }
    end

    context 'with length 4' do
      let(:length) { 4 }

      it { is_expected.to eq '1*3*' }
    end

    context 'with length 20' do
      let(:length) { 20 }

      it { is_expected.to eq '1*3*5*7*9*12*15*18*2' }
    end
  end
end
