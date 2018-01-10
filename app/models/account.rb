class Account < ApplicationRecord
  belongs_to :service_item, class_name: 'Service::Item'
end
