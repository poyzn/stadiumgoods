# frozen_string_literal: true

module SocialPlatforms
  class SummaryController < ApplicationController
    def index
      source = Sources::TakeHomeSource.new
      platforms = %w[twitter facebook instagram]
      source_stats = Commands::FetchSourceStats.new(source, platforms).call
      render json: Presenters::StatsPresenter.new(source_stats).as_json
    end
  end
end
