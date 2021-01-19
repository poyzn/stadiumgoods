# frozen_string_literal: true

module SocialPlatforms
  module Sources
    class TakeHomeSource
      include HTTParty

      base_uri 'takehome.io'

      def twitter_stats
        self.class.get('/twitter')
      end

      def facebook_stats
        self.class.get('/facebook')
      end

      def instagram_stats
        self.class.get('/instagram')
      end
    end
  end
end
