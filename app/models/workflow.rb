class Workflow < ApplicationRecord
  belongs_to :cargo
  belongs_to :tansport
  belongs_to :warehouse
  belongs_to :user
end
