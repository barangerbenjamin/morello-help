class AddCategoryToNeed < ActiveRecord::Migration[5.2]
  def change
    add_column :needs, :category, :string
  end
end
