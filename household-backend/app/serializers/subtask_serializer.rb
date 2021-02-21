class SubtaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :duration
end
