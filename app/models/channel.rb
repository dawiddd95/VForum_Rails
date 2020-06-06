class Channel < ApplicationRecord
   has_many :discussions
   has_many :users, through: :discussions

   validates :channel, presence: {message: 'Channel name is required'}
end
