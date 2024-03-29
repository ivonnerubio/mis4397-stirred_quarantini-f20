class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def index
        
    end
    
    def show
        
    end
    
    # def edit
    #     @user = User.find(params[:id])
    # end
    
    # def update
    #     current_user.update(params[:user])
    #     redirect_to current_user
    # end
    
    private
    
    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :link, :introduction, :languages, :current_affiliation, :interests)
    end
end
