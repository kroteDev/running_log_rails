class Activity < ApplicationRecord
  belongs_to :user
  validates_presence_of :activity_type, :distance

  def self.activity_type_options
    {"walk" => 0, "Running" => 1, "Jogging" => 2, "Marathon" => 3, "Public Run" => 4}
  end
end
