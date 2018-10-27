class Actor < ApplicationRecord
  belongs_to :ident_type
  belongs_to :actor_type
  belongs_to :degree
end
