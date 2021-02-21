class SubtaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :estimated_duration
end
