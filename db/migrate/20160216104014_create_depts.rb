class CreateDepts < ActiveRecord::Migration
  def change
    create_table :depts do |t|
      t.string :dept_name
      t.string :hod

      t.timestamps null: false
    end
  end
end
