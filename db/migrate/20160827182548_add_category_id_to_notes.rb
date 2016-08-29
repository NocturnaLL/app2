class AddCategoryIdToNotes < ActiveRecord::Migration[5.0]
  def change
  	add_column :notes, :category_id, :integer
    add_foreign_key :notes, :categories
  end
end
