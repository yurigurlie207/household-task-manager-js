class CreateUserTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tasks do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :subtask, index: true, foreign_key: true
      t.string :assigned_by
      t.text :comment
      t.timestamps null: false
    end
  end
end

# t.timestamps null: false is short-hand form of

#   t.column :created_at,  :datetime
#   t.column :updated_at,  :datetime

# https://apidock.com/ruby/DateTime/strftime