class Task < ApplicationRecord
    has_many :subtasks, dependent: :destroy
    has_many :users, :through => :subtasks
    # accepts_nested_attributes_for :subtasks 

    validates :title, presence: true
   
 
end
