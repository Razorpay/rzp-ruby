require 'razorpay/request'
require 'razorpay/entity'

module Razorpay
  # Account API allows you to create a sub-merchant account.  
  class Account < Entity
    
    @@versions = "v2"

    def self.request
      Razorpay::Request.new('accounts')
    end

    def self.create(options)
      request.create options, @@versions
    end

    def self.fetch(id)
      request.fetch id, @@versions
    end

    def self.edit(id, options = {})
      request.patch id, options, @@versions
    end

    def self.delete(id)
      request.delete "#{id}", @@versions
    end
  end
end