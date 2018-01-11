class SubscriptionsGrid < BaseGrid

  scope do
    Subscription
  end

  filter(:id, :integer)
  filter(:expires_at, :integer)
  filter(:service, :integer)
  filter(:created_at, :date, :range => true)

  column(:id)
  column(:service, :mandatory => true) do |record|
    @service = Service::Item.find(record.service_item_id)
    @service.name
  end

  column(:price, :mandatory => true) do |record|
    @service = Service::Item.find(record.service_item_id)
    @service.price
  end
  column(:expires_at, :mandatory => true)
  date_column(:created_at)
end
