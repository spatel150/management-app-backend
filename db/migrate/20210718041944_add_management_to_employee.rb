class AddManagementToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :management, null: false, foreign_key: true
  end
end
