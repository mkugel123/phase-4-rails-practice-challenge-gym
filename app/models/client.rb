class Client < ApplicationRecord
  has_many :memberships
  has_many :gyms, through: :memberships

  def total_for_all_memberships
    sum = self.memberships.pluck(:charge).sum
    "$#{sum}"
  end
end
