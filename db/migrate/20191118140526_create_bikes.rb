class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :name
      t.text :description
      t.integer :price_per_hour
      t.boolean :available, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
