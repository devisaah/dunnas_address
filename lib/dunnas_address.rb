require "dunnas_address/version"
require "dunnas_address/engine"

require 'httparty'
module DunnasAddress
  # Your code goes here...
  mattr_accessor :active_uuid

  def self.active_uuid
    @@active_uuid
  end
end
