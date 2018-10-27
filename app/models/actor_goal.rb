class ActorGoal < ApplicationRecord
  belongs_to :actor
  belongs_to :goal
  belongs_to :actor_type
end
