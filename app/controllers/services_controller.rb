class ServicesController < ApplicationController

  def new
    @subscription = Subscription.new
  end
end
