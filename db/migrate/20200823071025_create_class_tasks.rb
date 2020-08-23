class CreateClassTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :class_tasks do |t|
      t.datetime :start_time
      t.string :name , null: false
      t.string :teacher_name, null: false
      t.timestamps
    end
  end
end
