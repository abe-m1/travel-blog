class SessionsController < ApplicationController

    def new
      #render new     - this is implies it does not have to be written
    end

    def create

      user = User.find_by(email: params[:login][:email])

      if user && user.authenticate(params[:login][:password])  #the first thing we are checking is that user has said email address
        #if authenticate method that we wrote in the user model, it is looking for unencrypeted password
        #returns 1 of two things, 1. self - which evaluates to true, if not if either is not true, then we can just render the form again

            session[:user_id]  = user.id.to_s     #cookies can only store strings so we need to change id which is an interger and turn it into a strino
            redirect_to users_path
      else

        render :new

      end
    end


    def destroy
        session.delete(:user_id)
        redirect_to  login_path
    end

    #we don't need a model , there is nothing db related

end
