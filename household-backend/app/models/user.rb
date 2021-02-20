class User < ApplicationRecord
   has_many :user_tasks, dependent: :destroy
   has_many :subtasks, :through => :user_tasks
   has_many :tasks, :through => :subtasks

   validates :username, presence: true
 

end
