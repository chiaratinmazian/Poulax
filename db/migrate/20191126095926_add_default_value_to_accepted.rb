class AddDefaultValueToAccepted < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :accepted, :boolean, default: false
  end
end
