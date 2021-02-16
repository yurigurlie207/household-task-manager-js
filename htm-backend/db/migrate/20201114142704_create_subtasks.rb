class CreateSubtasks < ActiveRecord::Migration[6.0]
  def change
    create_table :subtasks do |t|
      t.string :title
      t.string :estimated_duration
      t.string :actual_duration
      t.string :priority
      t.text :notes
      t.boolean :complete, :default => false
      t.timestamps null: false
    end
  end
end
