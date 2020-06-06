class Reply < ApplicationRecord
   belongs_to :discussion
   belongs_to :user

   validates :reply, presence: true, length: {minimum: 3, message: 'Reply must at least contain 3 letters'}
end
