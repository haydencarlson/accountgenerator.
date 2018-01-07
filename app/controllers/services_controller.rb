class ServicesController < ApplicationController

  def new
    if !params['service_id']
      return redirect_to services_path
    end
    @service = Service::Item.find(params['service_id'])
    @subscription = Subscription.new
    @service_types = ['PayPal', 'Bitcoin', 'Ethereum']
  end

  def index
    @service_categories = Service::Category.all
  end

end
