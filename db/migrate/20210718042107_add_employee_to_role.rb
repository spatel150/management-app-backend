class AddEmployeeToRole < ActiveRecord::Migration[6.1]
  def change
    add_reference :roles, :employee, null: false, foreign_key: true
  end
end
