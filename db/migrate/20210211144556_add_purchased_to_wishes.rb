class AddPurchasedToWishes < ActiveRecord::Migration[5.2]
  def change
    add_column :wishes, :purchased, :boolean, default: false, null: false
  end
end
