class MaterialGoal < ApplicationRecord
  belongs_to :goal
  belongs_to :material_type
end
