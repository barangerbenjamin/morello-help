class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.references :user, foreign_key: true
      t.references :need, foreign_key: true
      t.string :status, default: "in progress"

      t.timestamps
    end
  end
end
