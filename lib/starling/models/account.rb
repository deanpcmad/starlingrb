module Starling
  class Account < Object

    class << self

      def list
        response = Client.get_request("accounts")
        Collection.from_response(response, type: Account, key: "accounts")
      end

      def balance(account:)
        Balance.new Client.get_request("accounts/#{account}/balance").body
      end

    end

  end
end
