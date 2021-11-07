module Starling
  class CardsResource < Resource

    def list
      response = get_request("cards")
      Collection.from_response(response, type: Card, key: "cards")
    end

    # Enables or Disables a card
    # Required scope: card-control:edit
    def enabled(card_uid:, enabled:)
      response = put_request("cards/#{card_uid}/controls/enabled", body: {enabled: enabled})
      
      return true if response.success?
    end

    # Enables or Disables ATM Withdrawal
    # Required scope: card-control:edit
    def atm_enabled(card_uid:, enabled:)
      response = put_request("cards/#{card_uid}/controls/atm-enabled", body: {enabled: enabled})
      
      return true if response.success?
    end

    # Enables or Disables Gambling
    # Required scope: card-control:edit
    def gambling_enabled(card_uid:, enabled:)
      response = put_request("cards/#{card_uid}/controls/gambling-enabled", body: {enabled: enabled})
      
      return true if response.success?
    end

    # Enables or Disables Mag Stripe
    # Required scope: card-control:edit
    def mag_stripe_enabled(card_uid:, enabled:)
      response = put_request("cards/#{card_uid}/controls/mag-stripe-enabled", body: {enabled: enabled})
      
      return true if response.success?
    end

    # Enables or Disables Mobile Wallet
    # Required scope: card-control:edit
    def mobile_wallet_enabled(card_uid:, enabled:)
      response = put_request("cards/#{card_uid}/controls/mobile-wallet-enabled", body: {enabled: enabled})
      
      return true if response.success?
    end

    # Enables or Disables Online
    # Required scope: card-control:edit
    def online_enabled(card_uid:, enabled:)
      response = put_request("cards/#{card_uid}/controls/online-enabled", body: {enabled: enabled})
      
      return true if response.success?
    end

    # Enables or Disables POS (contactless & chip and pin)
    # Required scope: card-control:edit
    def pos_enabled(card_uid:, enabled:)
      response = put_request("cards/#{card_uid}/controls/pos-enabled", body: {enabled: enabled})
      
      return true if response.success?
    end

    # Required scope: card-control:edit
    def currency_switch(card_uid:, enabled:, currency:)
      body = {enabled: enabled, currency: currency}
      response = put_request("cards/#{card_uid}/controls/currency-switch", body: body)
      
      return true if response.success?
    end
   
  end
end
