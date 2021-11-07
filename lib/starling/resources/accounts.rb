module Starling
  class AccountsResource < Resource

    def list
      response = get_request("accounts")
      Collection.from_response(response, type: Account, key: "accounts")
    end

    def balance(account_uid:)
      Balance.new get_request("accounts/#{account_uid}/balance").body
    end
    
  end
end
