class RemoveColumnFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :reviews, :string
  end
end
