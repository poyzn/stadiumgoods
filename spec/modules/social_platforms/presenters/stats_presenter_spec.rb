require 'rails_helper'

describe SocialPlatforms::Presenters::StatsPresenter do
  let(:source_stats) { SourceStat.new }
  subject { described_class.new(source_stats) }

  it 'responds to as_json' do
    expect(subject).to respond_to :as_json
  end
  it 'responds with empty json fields' do
    json = {
      twitter: [],
      facebook: [],
      instagram: []
    }
    expect(subject.as_json).to eq json
  end
end
