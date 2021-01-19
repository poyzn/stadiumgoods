# frozen_string_literal: true

module SocialPlatforms
  class UnavailablePlatform < StandardError; end

  module Commands
    class FetchSourceStats
      def initialize(source, platforms)
        @source = source
        @platforms = platforms
        @source_stats = SourceStat.new
      end

      def call
        @platforms.each do |platform|
          @source_stats[platform] = fetch_stats platform
        end
        @source_stats
      end

      private

      def fetch_stats(platform)
        raise UnavailablePlatform unless available_in_source? platform

        response = @source.send stats_method(platform)
        JSON.parse response.body
      rescue StandardError
        []
      end

      def available_in_source?(platform)
        @source.respond_to? stats_method(platform)
      end

      def stats_method(platform)
        "#{platform}_stats"
      end
    end
  end
end