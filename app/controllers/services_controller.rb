class ServicesController < ApplicationController
  attr_accessor :gateway
  def new
    @subscription = Subscription.new
    @service_types = ['PayPal', 'Bitcoin', 'Ethereum']
  end
end
