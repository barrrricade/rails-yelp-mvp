class AddColumnsToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :address, :string
    add_column :restaurants, :phone_number, :string
    add_column :restaurants, :reviews, :integer
  end
end
