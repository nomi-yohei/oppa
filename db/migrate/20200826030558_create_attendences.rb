class CreateAttendences < ActiveRecord::Migration[5.2]
  def change
    create_table :attendences do |t|
      t.integer :user_id,null: false
      t.integer :task_content_id,null: false
      t.boolean :is_attended

      t.timestamps
    end
  end
end
