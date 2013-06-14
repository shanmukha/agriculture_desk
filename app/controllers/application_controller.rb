class ApplicationController < ActionController::Base
  protect_from_forgery
   # Devise: Where to redirect users once they have logged in
 def after_sign_in_path_for(resource)
   if current_user.is_superadmin?(Community.first) 
     super_admin_master_records_path
   else
     root_path
   end
 end
end 
