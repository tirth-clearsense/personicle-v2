class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def oktaoauth
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @user = User.from_omniauth(request.env["omniauth.auth"].except("extra"))
  
      if @user.save
        session[:oktastate] = request.env["omniauth.auth"].except("extra")
        # puts request.env["omniauth.auth"].except("extra")
      else
        print(@user.errors.full_messages)
      end
  
      if @user.present?
        redirect_to user_path(session[:oktastate][:uid])
      end
    end
  
    def failure
  
    end
  end
  