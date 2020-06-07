class Channel < ApplicationRecord
   has_many :discussions, dependent: :destroy
   has_many :users, through: :discussions

   validates :channel, presence: {message: 'Channel name is required'}

   resourcify
end
