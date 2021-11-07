module Starling
  class Client
    BASE_PRODUCTION_URL = "https://api.starlingbank.com/api/v2"
    BASE_SANDBOX_URL = "https://api-sandbox.starlingbank.com/api/v2"

    attr_reader :environment, :access_token, :adapter

    def initialize(environment:, access_token:, adapter: Faraday.default_adapter, stubs: nil)
      @environment = environment
      @access_token = access_token
      @adapter = adapter

      # Test stubs for requests
      @stubs = stubs
    end

    def accounts
      AccountsResource.new(self)
    end

    def account_holders
      AccountHoldersResource.new(self)
    end

    def cards
      CardsResource.new(self)
    end

    def url
      if environment == :sandbox
        BASE_SANDBOX_URL
      elsif environment == :production
        BASE_PRODUCTION_URL
      else
        nil
      end
    end

    def connection
      @connection ||= Faraday.new(url) do |conn|
        conn.request :authorization, :Bearer, access_token
        conn.request :json

        conn.response :dates
        conn.response :json, content_type: "application/json"

        conn.adapter adapter, @stubs
      end
    end
  end
end
