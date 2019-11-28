class ChangeHenCity < ActiveRecord::Migration[5.2]
  def change
    rename_column :hens, :city, :address
  end
end
