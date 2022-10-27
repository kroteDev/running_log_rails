class Activity < ApplicationRecord
  belongs_to :user
  validates_presence_of :activity_type, :distance
end
