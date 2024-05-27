# frozen_string_literal: true

require "faraday"
require "faraday_middleware"

require_relative "starling/version"

module Starling

  autoload :Configuration, "starling/configuration"
  autoload :Client, "starling/client"
  autoload :Collection, "starling/collection"
  autoload :Error, "starling/error"
  autoload :Object, "starling/object"

  class << self
    attr_writer :config
  end

  def self.configure
    yield(config) if block_given?
  end

  def self.config
    @config ||= Starling::Configuration.new
  end

  autoload :Account, "starling/models/account"
  autoload :Card, "starling/models/card"

  # Additional
  autoload :Balance, "starling/models/balance"

end
