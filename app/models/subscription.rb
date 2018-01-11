class Subscription < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :service_item, class_name: "Service::Item"
end
