class Service::Item < ApplicationRecord
  belongs_to :service_category, :class_name => "Service::Category", :foreign_key => "service_category_id"
end
