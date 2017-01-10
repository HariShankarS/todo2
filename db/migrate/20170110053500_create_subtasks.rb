class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.string :text
      t.boolean :finished
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
