class AddCategoryToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :category, :string
  end
end
