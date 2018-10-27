class GoalAttainment < ApplicationRecord
  belongs_to :degree
  belongs_to :goal
  belongs_to :actor_type
end
