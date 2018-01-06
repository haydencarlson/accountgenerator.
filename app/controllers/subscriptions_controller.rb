class SubscriptionsController < ApplicationController
  SELLY_PAY_API_URL = "https://selly.gg/api/v2/pay"
  AUTH_HEADER = Rails.application.secrets.selly_auth_header
  protect_from_forgery :except => [:webhook]

  def create
    @service = Service.find(params['subscription']['service_id'])
    payload = {
      title: "Netflix",
      gateway: "PayPal",
      email: 'hayden.carlson@icloud.com',
      value: "0.01",
      currency: 'CAD',
      return_url: 'https://www.bwgforums.com/gen',
      webhook_url: "http://0b7b673e.ngrok.io/webhook?sid=#{@service.id}&uid=#{current_user.id}&secret=#{Rails.application.secrets.webhook_secret}"
    }
    RestClient.post(SELLY_PAY_API_URL, payload, headers={ :Authorization => "Basic #{Base64.strict_encode64(AUTH_HEADER)}"})
  end

  def webhook
    if params['sid'].present?
      user = User.find(params['uid'])
      subscription = user.subscriptions.create(service_id: params['sid'])
    end
  end
end
