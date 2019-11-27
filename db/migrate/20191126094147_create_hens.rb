class CreateHens < ActiveRecord::Migration[5.2]
  def change
    create_table :hens do |t|
      t.string :name
      t.text :description
      t.float :price_per_day
      t.integer :eggs_per_day
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
