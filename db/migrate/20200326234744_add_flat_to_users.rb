class AddFlatToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :flat_number, :integer
    add_column :users, :complex, :string
  end
end
