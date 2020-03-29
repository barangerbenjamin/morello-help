class AddEndTimeToNeed < ActiveRecord::Migration[5.2]
  def change
    add_column :needs, :end_time, :datetime
  end
end
