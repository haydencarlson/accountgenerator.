class Service::Category < ApplicationRecord
  has_many :service_items, :class_name => "Service::Item", :foreign_key => "service_category_id"
end
