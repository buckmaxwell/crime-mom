class Person < ActiveRecord::Base
  validates :first_name, presence: true,
            length: { minimum: 3 }
  validates :last_name, presence: true,
            length: {minimum: 3}
  validates :email, presence: true,
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
