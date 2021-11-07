module Starling
  class AccountsResource < Resource

    def list
      response = get_request("accounts")
      Collection.from_response(response, type: Account, key: "accounts")
    end

    def balance(uid:)
      Balance.new get_request("accounts/#{uid}/balance").body
    end
    
  end
end
