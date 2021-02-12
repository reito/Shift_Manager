class AddRepaidToLoans < ActiveRecord::Migration[5.2]
  def change
    add_column :loans, :repaid, :boolean, default: false, null: false
  end
end
