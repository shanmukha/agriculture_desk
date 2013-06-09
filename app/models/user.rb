class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable, :authentication_keys =>[:login]
  attr_accessor :login
        attr_accessible :email, :uuid,:token,:first_name,:last_name,:login,:date_of_birth,:proof_verification, :username,:phone, :landline,:password,:password_confirmation,:address,:city,:county,:state,:village,:pin,:active 
        attr_accessible  :mobile, :country_id, :state_id, :other_state, :district, :taluk, :village_or_area, :zip_code
  validates_presence_of :username
  #validates_presence_of :first_name
  validates_uniqueness_of :email, :unless => lambda{ |user| user.email.blank? } 
  validates_presence_of   :password,:on => :update, :unless => lambda{ |user| user.password.blank? } 
  validates_confirmation_of :password,:on => :update, :unless => lambda{ |user| user.password.blank? } 
  validates_format_of :username, :with => /^[a-zA-Z\d]*$/i,  :message => "can contain only letters and numbers"
 validates :password,:length => { :minimum => 6 } ,:on => :update, :unless => lambda{ |user| user.password.blank? } 
  validates_uniqueness_of :username
   
  has_many :user_role_communities
  has_many :communities,:through => :user_role_communities
  has_many :roles,:through => :user_role_communities
  
  def self.find_for_authentication(conditions)
    login = conditions.delete(:login)
    User.where(conditions).where("active =?", true).where(["username = :value OR email = :value", { :value => login }]).first
  end
  
  def self.create_from_fb_callback(auth)
    user = User.new(email:auth.info.email,first_name:auth.extra.raw_info.name, password:Devise.friendly_token[0,20], 
                   uuid:auth.uid,token:auth.credentials.token,username:auth.extra.raw_info.name)               
    #user.avatar = open(auth.info.image.gsub('square', 'large')) 
    user.save
    user
  end
  
  
  def is_moderator?(community)
    role =  Role.get_role_object("moderator")
    if self.role_community_object(community,role)
      return true
    else
      return false
    end   
  end
  
  def is_admin?(community)
    role =  Role.get_role_object("admin")
    if self.role_community_object(community,role)
      return true
    else
      return false
    end 
  end
  
  def is_farmer?(community)
    role =  Role.get_role_object("farmer")
     if self.role_community_object(community,role)
      return true
    else
      return false
    end 
  end
  
  def is_buyer?(community)
    role = Role.get_role_object("buyer")
    if self.role_community_object(community,role)
      return true
    else
      return false
    end 
  end 
  
   def is_superadmin?(community)
    role = Role.get_role_object("super_admin")
    if self.role_community_object(community,role)
      return true
    else
      return false
    end 
  end 
  
  def is_normal_user?(community)
    role =  Role.get_role_object("normal_user")
    if self.role_community_object(community,role)
      return true
    else
      return false
    end 
  end 
  
  def role_community_object(community,role)
     self.user_role_communities.where(:community_id => community.id,:role_id => role.id).first  
  end
 end
