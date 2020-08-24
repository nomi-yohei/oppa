class CreateTaskContents < ActiveRecord::Migration[5.2]
  def change
    create_table :task_contents do |t|
      t.text :content
      t.integer :class_task_id
      t.string :name
      t.date :task_times
      t.timestamps
    end
  end
end
