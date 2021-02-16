# class SubtaskusersValidator < ActiveModel::Validator
#     def validate(record)
#       unless record.user_ids.count >= 2
#         record.errors[:user_ids] << "You must assign at least one user to this subtask!"
#       end
#     end
#   end