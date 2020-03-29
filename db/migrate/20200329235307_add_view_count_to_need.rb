class AddViewCountToNeed < ActiveRecord::Migration[5.2]
  def change
    add_column :needs, :view_count, :integer, default: 0
  end
end
