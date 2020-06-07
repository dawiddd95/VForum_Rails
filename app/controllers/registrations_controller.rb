class RegistrationsController < Devise::RegistrationsController
   after_action :assign_role
   def assign_role
      if User.all.count == 1 
         User.add_role :admin
      elsif User.all.count == 2 
         User.add_role :moderator
      else
         User.add_role :user
      end
   end

   private

   def sign_up_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
   end

   def account_update_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
   end
end