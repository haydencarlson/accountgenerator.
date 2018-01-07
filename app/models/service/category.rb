class Service::Category < ApplicationRecord
  has_many :service_items, :class_name => "Service::Item"
end
