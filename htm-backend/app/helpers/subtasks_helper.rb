module SubtasksHelper
    def estimated_select(subtask, path)
        select_tag "subtask[estimated_duration]", options_for_select(['','5 minutes','15 minutes', '30 minutes', '45 minutes', '60 minutes'], path !~ /.*edit.*/ ? '      ' : subtask.estimated_duration)
    end

    def actual_select(subtask, path)
        select_tag "subtask[actual_duration]", options_for_select(['','5 minutes','10 minutes','30 minutes', '45 minutes', '60 minutes'], path !~ /.*edit.*/ ? '      ' : subtask.actual_duration)
    end

    def priority_select(subtask,path)
        select_tag "subtask[priority]", options_for_select(['','low', 'medium', 'high'], path !~ /.*edit.*/ ? '      ' : subtask.priority )
    end

    #return an array of usernames, only if there are users assigned
    def list_users(subtask)
        usertasks = UserTask.where(subtask_id: subtask.id)
        if usertasks
            usernames = usertasks.collect do |usertask|
                User.find_by(id: usertask.user_id).username
            end
        else
            ["No Users Assigned"]
        end
       
    end
end
