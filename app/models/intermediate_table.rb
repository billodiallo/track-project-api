class IntermediateTable < ApplicationRecord
  belongs_to :programmers
  belongs_to :projects
end
