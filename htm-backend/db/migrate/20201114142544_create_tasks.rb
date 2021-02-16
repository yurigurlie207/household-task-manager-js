class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :deadline
      t.text :notes
      t.boolean :complete
      t.timestamps null: false
    end
  end
end
