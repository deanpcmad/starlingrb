module Starling
  class Transaction < Object

    class << self

      def list(account:, from:, to:)
        params = {minTransactionTimestamp: from, maxTransactionTimestamp: to}
        response = Client.get_request("feed/account/#{account}/settled-transactions-between", params: params)
        Collection.from_response(response, type: Transaction, key: "feedItems")
      end

    end

  end
end
