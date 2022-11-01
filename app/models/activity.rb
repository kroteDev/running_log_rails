class Activity < ApplicationRecord
  belongs_to :user
  validates_presence_of :activity_type, :distance

  def self.activity_type_options
    {"walk" => 0, "run" => 1, "jog" => 2, "marathon" => 3, "street run" => 4}
  end
end
