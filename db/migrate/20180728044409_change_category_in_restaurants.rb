class ChangeCategoryInRestaurants < ActiveRecord::Migration[5.2]
  def change
    change_column :restaurants, :category, :string
  end
end
