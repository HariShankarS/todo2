class Subtask < ActiveRecord::Base
  belongs_to :task
  def percent
  	if finished?
  	  100 
  	else
  	  0
    end
  end
end
