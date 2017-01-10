class Task < ActiveRecord::Base
  has_many :subtasks, :foreign_key => "parent_id", dependent: :destroy

  def percent
  	if subtasks.present?
      ((subtasks.where(:finished => true).count) * 100) / (subtasks.count)
    else
      0
    end
  end
end
