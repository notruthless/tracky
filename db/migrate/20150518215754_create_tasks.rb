class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :summary
      t.text :details
      t.date :deadline
      t.integer :owner_id
      t.integer :assignee_id

      t.timestamps null: false
    end
    add_index :tasks, :owner_id
    add_index :tasks, :assignee_id

  end
end
