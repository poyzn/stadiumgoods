# frozen_string_literal: true

module SocialPlatforms
  module Presenters
    class StatsPresenter < SimpleDelegator
      def as_json
        {
          twitter: tweets,
          facebook: statuses,
          instagram: photos
        }
      end

      def tweets
        twitter.map { _1['tweet']}
      end

      def statuses
        facebook.map { _1['status']}
      end

      def photos
        instagram.map { _1['photo']}
      end
    end
  end
end