module TaskHelper
    
      # Display dropdown of artists, with name if editing through nested
      def task_select(subtask, path)
        if subtask.task && path =~ /.*tasks.*subtasks.*/
          select_tag "subtask[task_id]", options_from_collection_for_select(Task.where(id: subtask.task_id), :id, :title)
        else
          select_tag "subtask[task_id]", options_from_collection_for_select(Task.all, :id, :title), :include_blank => true 
        end
      end
    
end
