class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :string
      t.string :description
      t.string :string
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
