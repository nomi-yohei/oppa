class CreateAttendences < ActiveRecord::Migration[5.2]
  def change
    create_table :attendences do |t|
      t.integer :user_id
      t.integer :task_content_id
      t.boolean :is_attended ,null: false ,default: false

      t.timestamps
    end
  end
end
