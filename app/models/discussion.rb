class Discussion < ApplicationRecord
   belongs_to :channel
   belongs_to :user
   has_many :replies, dependent: :destroy

   validates :title, 
      presence: {message: 'Title is required'}, 
      length: {minimum: 3, message: 'Title must at least contain 3 letters'}
   validates :content,
      presence: {message: 'Content is required'}, 
      length: {minimum: 3, message: 'Content must at least contain 3 letters'}

   resourcify
end
