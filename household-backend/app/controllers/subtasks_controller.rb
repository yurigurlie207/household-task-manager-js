class SubtasksController < ApplicationController 
    def index
       subtasks = Subtask.unassigned
       render json: SubtaskSerializer.new(subtasks)
    end
end


# {"data":
# [{"id":"7","type":"subtask","attributes":{"title":"cook breakfast","estimated_duration":"20 minutes"}},
# {"id":"7","type":"subtask","attributes":{"title":"cook breakfast","estimated_duration":"20 minutes"}},
# {"id":"7","type":"subtask","attributes":{"title":"cook breakfast","estimated_duration":"20 minutes"}},
# {"id":"8","type":"subtask","attributes":{"title":"vaccuum bedroom","estimated_duration":"10 minutes"}},
# {"id":"9","type":"subtask","attributes":{"title":"grocery shop","estimated_duration":"90 minutes"}},
# {"id":"10","type":"subtask","attributes":{"title":"power wash house","estimated_duration":"90 minutes"}},
# {"id":"11","type":"subtask","attributes":{"title":"mow lawn","estimated_duration":"30 minutes"}},
# {"id":"12","type":"subtask","attributes":{"title":"cook dinner","estimated_duration":"45 minutes"}}]}