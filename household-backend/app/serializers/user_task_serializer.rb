class UserTaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :user
  belongs_to :subtask
end


#HERE IS THE JSON OUTPUT FROM THE USER TASK INDEX PAGE BASED ON THE ABOVE SET UP

# {"data":
# [{"id":"1","type":"user_task","attributes":
# {"created_at":"2021-02-20T20:36:18.145Z"},
# "relationships":{"user":{"data":{"id":"1","type":"user"}},"subtask":{"data":{"id":"1","type":"subtask"}}}},

# {"id":"2","type":"user_task","attributes":
# {"created_at":"2021-02-20T20:36:18.161Z"},
# "relationships":{"user":{"data":{"id":"2","type":"user"}},"subtask":{"data":{"id":"1","type":"subtask"}}}},

# {"id":"3","type":"user_task","attributes":
# {"created_at":"2021-02-20T20:36:18.165Z"},
# "relationships":{"user":{"data":{"id":"3","type":"user"}},"subtask":{"data":{"id":"1","type":"subtask"}}}},

# {"id":"4","type":"user_task","attributes":
# {"created_at":"2021-02-20T20:36:18.171Z"},
# "relationships":{"user":{"data":{"id":"1","type":"user"}},"subtask":{"data":{"id":"2","type":"subtask"}}}},

# {"id":"5","type":"user_task","attributes":
# {"created_at":"2021-02-20T20:36:18.176Z"},
# "relationships":{"user":{"data":{"id":"1","type":"user"}},"subtask":{"data":{"id":"3","type":"subtask"}}}},

# {"id":"6","type":"user_task","attributes":
# {"created_at":"2021-02-20T20:36:18.181Z"},
# "relationships":{"user":{"data":{"id":"2","type":"user"}},"subtask":{"data":{"id":"4","type":"subtask"}}}},

# {"id":"7","type":"user_task","attributes":
# {"created_at":"2021-02-20T20:36:18.186Z"},
# "relationships":{"user":{"data":{"id":"2","type":"user"}},"subtask":{"data":{"id":"5","type":"subtask"}}}},

# {"id":"8","type":"user_task","attributes":
# {"created_at":"2021-02-20T20:36:18.191Z"},
# "relationships":{"user":{"data":{"id":"2","type":"user"}},"subtask":{"data":{"id":"6","type":"subtask"}}}}],

# "included":[
#   {"id":"7","type":"subtask","attributes":{"title":"cook breakfast","estimated_duration":"20 minutes"}},
#   {"id":"4","type":"user","attributes":{"username":"Mom"}},
#   {"id":"5","type":"user","attributes":{"username":"Dad"}},
#   {"id":"6","type":"user","attributes":{"username":"Daughter"}},
#   {"id":"8","type":"subtask","attributes":{"title":"vaccuum bedroom","estimated_duration":"10 minutes"}},
#   {"id":"9","type":"subtask","attributes":{"title":"grocery shop","estimated_duration":"90 minutes"}},
#   {"id":"10","type":"subtask","attributes":{"title":"power wash house","estimated_duration":"90 minutes"}},
#   {"id":"11","type":"subtask","attributes":{"title":"mow lawn","estimated_duration":"30 minutes"}},
#   {"id":"12","type":"subtask","attributes":{"title":"cook dinner","estimated_duration":"45 minutes"}}]}