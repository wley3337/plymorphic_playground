class User < ApplicationRecord
  has_many :group_members,  as: :member
  has_many :groups,  through: :group_members

  def other_members
      self.groups.map{|group| group.all_members_except(self)}
  end
end
