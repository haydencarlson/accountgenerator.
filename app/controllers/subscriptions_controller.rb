class SubscriptionsController < ApplicationController
  SELLY_PAY_API_URL = "https://selly.gg/api/v2/pay"
  AUTH_HEADER = Rails.application.secrets.selly_auth_header
  protect_from_forgery :except => [:webhook]
  before_action :valid_secret?, only: [:webhook]

  def index
    @grid = SubscriptionsGrid.new(grid_params) do |scope|
      scope.page(params[:page])
    end
  end

  def create
    if check_for_errors
      return redirect_to new_service_path(:service_id => params['service_id'])
    end
    @service = Service::Item.find(params['service_id'])
    @gateway = Gateway.find(params['subscription']['id'])

    payload = {
      title: @service.name.titleize,
      gateway: @gateway.name,
      email: current_user.email,
      value: @service.price,
      currency: 'USD',
      return_url: 'http://0b7b673e.ngrok.io/subscriptions',
      webhook_url: "http://0b7b673e.ngrok.io/webhook?sid=#{@service.id}&uid=#{current_user.id}&secret=#{Rails.application.secrets.webhook_secret}"
    }

    response = RestClient.post(SELLY_PAY_API_URL, payload, headers={ :Authorization => "Basic #{Base64.strict_encode64(AUTH_HEADER)}"})
    response = JSON.parse(response)
    redirect_to response['url']
  end

  def webhook
    if params['sid'].present?
      user = User.find(params['uid'])
      subscription = user.subscriptions.create(service_id: params['sid'])
      redirect_to subscriptions_path
    end
  end

  def check_for_errors
    flash[:error] = []

    if params['service_id'] == ''
      flash[:error] << 'Please choose a service.'
    elsif current_user.subscriptions.where(service_item_id: params['service_id']).any?
      return flash[:error] << "You are already subscribed to this service."
    end

    if params['subscription']['id'] == ''
      flash[:error] << "Please choose a payment method."
    end

    if flash[:error].any?
      true
    else
      false
    end
  end

  def valid_secret?
    unless params['secret'] == Rails.application.secrets.webhook_secret
      redirect_to new_service_path
    end
  end

  protected

  def grid_params
    params.fetch(:subscriptions_grid, {}).permit!
  end
end
