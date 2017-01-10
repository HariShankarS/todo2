class Task < ActiveRecord::Base
  has_many :subtasks, :foreign_key => "parent_id", dependent: :destroy

  def percent
    ((subtasks.where(:finished => true).count) * 100) / (subtasks.count)
  end
end
