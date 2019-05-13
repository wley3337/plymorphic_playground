class Group < ApplicationRecord
  has_many :group_members
  #has many endmodel, through join model, source is the polymorphic  model belongs to , source type is the end model name
  has_many :users, through: :group_members, source: :member, source_type: 'User'
  has_many :ghosts, through: :group_members, source: :member, source_type: 'Ghost'

  def all_members
    members = []
    self.users.each{ |user| members.push(user)}
    self.ghosts.each{ |ghost| members.push(ghost)}
    members
  end

  def all_members_except(user_instance)
    members = []
    self.users.each{ |user| members.push(user) if user.id != user_instance.id}
    self.ghosts.each{ |ghost| members.push(ghost)}
    members
  end
end
