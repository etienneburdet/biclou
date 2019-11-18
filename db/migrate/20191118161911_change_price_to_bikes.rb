class ChangePriceToBikes < ActiveRecord::Migration[5.2]
  def change
    change_column :bikes, :price_per_hour, :decimal, precision: 8, scale: 2
  end
end
