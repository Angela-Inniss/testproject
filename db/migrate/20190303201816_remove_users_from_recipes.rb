class RemoveUsersFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :users
  end
end
