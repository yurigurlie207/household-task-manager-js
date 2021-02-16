module UserTasksHelper
    def incomplete_usertasks
        @usertasks = []
        
        Subtask.incomplete.each do |subtask|
            @usertasks << UserTask.where(subtask_id: subtask.id, user_id: session[:user_id])
        end

        # binding.pry
        return @usertasks
    end
end
