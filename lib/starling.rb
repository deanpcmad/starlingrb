# frozen_string_literal: true

require "faraday"
require "faraday_middleware"

require_relative "starling/version"

module Starling
  
  autoload :Client, "starling/client"
  autoload :Collection, "starling/collection"
  autoload :Error, "starling/error"
  autoload :Resource, "starling/resource"
  autoload :Object, "starling/object"

  autoload :AccountsResource, "starling/resources/accounts"
  autoload :AccountHoldersResource, "starling/resources/account_holders"
  autoload :CardsResource, "starling/resources/cards"
  autoload :DirectDebitMandatesResource, "starling/resources/direct_debit_mandates"

  autoload :Account, "starling/objects/account"
  autoload :AccountHolder, "starling/objects/account_holder"
  autoload :Balance, "starling/objects/balance"
  autoload :Card, "starling/objects/card"
  autoload :DirectDebitMandate, "starling/objects/direct_debit_mandate"
  autoload :DirectDebitPayment, "starling/objects/direct_debit_payment"

end
