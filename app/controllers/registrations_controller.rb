class RegistrationsController < Devise::RegistrationsController
   after_action :assign_role
   def assign_role
      if User.all.count == 1 
         User.first.add_role :admin
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