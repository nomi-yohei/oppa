class CreateTaskContents < ActiveRecord::Migration[5.2]
  def change
    create_table :task_contents do |t|
      t.text :content
      t.integer :class_task_id,null: false  
      t.string :name,null: false 
      t.date :task_times,null: false 
      t.datetime :start_time,null: false 
      t.datetime :finish_time,null: false 
      t.timestamps
    end
  end
end
