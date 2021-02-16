class User < ApplicationRecord
   has_secure_password
   has_many :user_tasks, dependent: :destroy
   has_many :subtasks, :through => :user_tasks
   has_many :tasks, :through => :subtasks

   validates :username, presence: true
   validates :password, presence: true
   validates :password, length: { in: 6..20 }
   validates :email, presence: true

   validates :username, uniqueness: {
      message: 'is already being used by another user'
    }
    validates :email, uniqueness: {
      message: 'another user already has this email'
    }

end
