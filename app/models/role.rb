class Role < ActiveRecord::Base
  attr_accessible :name
  has_many :user_role_communities
  has_many :communities,:through => :user_role_communities
  has_many :users,:through => :user_role_communities
  
  def self.get_role_object(name)
     Role.find_by_name(name)
  end
end
