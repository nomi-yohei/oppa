class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.integer :user_id
      t.integer :class_task_id

      t.timestamps
    end
    add_index :centers, :user_id
    add_index :centers, :class_task_id
  end
end
