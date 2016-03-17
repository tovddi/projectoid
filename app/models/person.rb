class Person < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :phone, numericality: true, allow_blank: true
  validates :email,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i },
            allow_blank: true
end
