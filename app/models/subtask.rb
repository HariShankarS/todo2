class Subtask < ActiveRecord::Base
  belongs_to :task, :foreign_key => "parent_id"
end
