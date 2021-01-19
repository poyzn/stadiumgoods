require 'rails_helper'

describe SocialPlatforms::Sources::TakeHomeSource do
  it 'responds to base_uri' do
    expect(described_class).to respond_to :base_uri
  end
  %w[twitter facebook instagram].each do |platform|
    it "responds with #{platform}_stats" do
      expect(subject).to respond_to "#{platform}_stats"
    end
  end
end