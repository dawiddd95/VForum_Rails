class CreateApplicationRoles < ActiveRecord::Migration[5.1]
   def up
      # Podaj role
      ['admin', 'user', 'moderator'].each do |role_name|
         Role.create! name: role_name
      end
   end
   def down
      # Podaj te same role
      Role.where(name: ['admin', 'user', 'moderator']).destroy_all
   end
end