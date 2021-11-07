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

  autoload :Account, "starling/objects/account"
  autoload :Balance, "starling/objects/balance"

end
