class Membership < ApplicationRecord
  validates :gym_id, :client_id, :charge, presence: true
  validates :client_id, uniqueness: { scope: :gym_id, message: "can have only one membership with gym" }

  def client_can_only_have_one_membership_with_gym

  end

  belongs_to :gym
  belongs_to :client
end
