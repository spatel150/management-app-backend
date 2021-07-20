class Role < ApplicationRecord
  belongs_to :employee, optional: true
end
