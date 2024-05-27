# frozen_string_literal: true

module Starling
  class Configuration

    attr_accessor :environment, :access_token

    def url
      if environment == :sandbox
        Starling::Client::BASE_SANDBOX_URL
      elsif environment == :production
        Starling::Client::BASE_PRODUCTION_URL
      else
        nil
      end
    end

  end
end
