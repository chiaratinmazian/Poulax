class AddCoordinatesToHens < ActiveRecord::Migration[5.2]
  def change
    add_column :hens, :latitude, :float
    add_column :hens, :longitude, :float
  end
end
