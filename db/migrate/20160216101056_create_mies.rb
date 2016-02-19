class CreateMies < ActiveRecord::Migration
  def change
    create_table :mies do |t|
      t.string :name
      t.integer :emp_id
      t.string :address

      t.timestamps null: false
    end
  end
end
