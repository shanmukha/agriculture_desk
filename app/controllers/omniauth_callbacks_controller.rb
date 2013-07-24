class  OmniauthCallbacksController < Devise::OmniauthCallbacksController
 
  
  def facebook
    auth = request.env["omniauth.auth"]
    user = User.find_by_email(auth.info.email)
   
    if user.nil?
       user = User.create_from_fb_callback(auth)
    else
      user.update_attribute('token', auth['credentials']['token'])
    end
      sign_in user
    render :layout => false
  end
end
