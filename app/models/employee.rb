class Employee < ApplicationRecord
  belongs_to :management, optional: true
  has_many :roles
end
