class ActorAttainGoal < ApplicationRecord
  belongs_to :goal
  belongs_to :actor
  belongs_to :actor_goal
  belongs_to :actor_type
end
