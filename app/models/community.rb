class Community < ActiveRecord::Base
  attr_accessible :area, :code, :community_level, :community_type, :description, :name, :status
  has_many :user_role_communities
  has_many :roles,:through => :user_role_communities
  has_many :users,:through => :user_role_communities
end
