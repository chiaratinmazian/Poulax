class AddPhotoToHens < ActiveRecord::Migration[5.2]
  def change
    add_column :hens, :photo, :string
  end
end
