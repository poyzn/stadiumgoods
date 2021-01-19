require 'rails_helper'

describe SocialPlatforms::Commands::FetchSourceStats do
  let(:source) { nil }
  let(:platforms) { {} }
  subject { described_class.new(source, platforms) }

  it 'responds to call' do
    expect(subject).to respond_to :call
  end

  it 'returns an instance of SourceStat class' do
    expect(subject.call).to be_instance_of SourceStat
  end
end