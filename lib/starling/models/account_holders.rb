module Starling
  class AccountHoldersResource < Resource

    def account_holder
      AccountHolder.new get_request("account-holder").body
    end

    def name
      AccountHolder.new get_request("account-holder/name").body
    end
    
  end
end
