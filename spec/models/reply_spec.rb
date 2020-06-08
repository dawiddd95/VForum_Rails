require 'rails_helper'

RSpec.describe Reply, :type => :model do
   subject {
      described_class.new(
         reply: 'Great article!'
      )
   }

   it "is not valid without a reply content" do
      subject.reply = nil
      expect(subject).to_not be_valid
   end

   it "is not valid without a min 3 letters content" do
      subject.reply = 'Gr'
      expect(subject).to_not be_valid
   end

   it "should belongs to user" do
      reply = Reply.reflect_on_association(:user)
      expect(reply.macro).to eq(:belongs_to)
   end

   it "should belongs to discussion" do
      reply = Reply.reflect_on_association(:discussion)
      expect(reply.macro).to eq(:belongs_to)
   end
end