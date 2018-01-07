class ServicesController < ApplicationController

  def new
    @subscription = Subscription.new
    @service_types = ['PayPal', 'Bitcoin', 'Ethereum']
  end

  def index
    # @tv_services = Service.where(category: "TV")
  end

end
