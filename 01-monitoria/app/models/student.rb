class Student < ApplicationRecord
    has_one :contact
    has_many :subscriptions

    accepts_nested_attributes_for :contact
end
