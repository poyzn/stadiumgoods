# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SourceStat, type: :model do
  it 'responds to twitter' do
    expect(subject).to respond_to :twitter
  end
  it 'responds to facebook' do
    expect(subject).to respond_to :facebook
  end
  it 'responds to instagram' do
    expect(subject).to respond_to :instagram
  end
  it 'has default twitter value' do
    expect(subject.twitter).to eq []
  end
  it 'has default facebook value' do
    expect(subject.facebook).to eq []
  end
  it 'has default instagram value' do
    expect(subject.instagram).to eq []
  end
end
