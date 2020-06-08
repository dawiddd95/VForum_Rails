require 'rails_helper'

RSpec.describe Discussion, :type => :model do
   subject {
      described_class.new(
         id: 1,
         title: "Title of discussion",
         content: "Content of this discussion",
         created_at: DateTime.now, 
         updated_at: DateTime.now, 
         user_id: 1, 
         channel_id: 1
      )
   }

   it "is not valid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
   end

   it "is not valid without a min 3 letters title" do
      subject.title = 'ab'
      expect(subject).to_not be_valid
   end

   it "is not valid without a content" do
      subject.content = nil
      expect(subject).to_not be_valid
   end

   it "is not valid without a min 3 letters content" do
      subject.content = 'co'
      expect(subject).to_not be_valid
   end

   it "is not valid without a created date" do
      subject.created_at = nil
      expect(subject).to_not be_valid
   end

   it "is not valid without a updated date" do
      subject.updated_at = nil
      expect(subject).to_not be_valid
   end

   it "is not valid without a user id" do
      subject.user_id = nil
      expect(subject).to_not be_valid
   end

   it "is not valid without a channel id" do
      subject.channel_id = nil
      expect(subject).to_not be_valid
   end

   it "should have many replies" do
      discussion = Discussion.reflect_on_association(:replies)
      expect(discussion.macro).to eq(:has_many)
   end

   it "should belong to channel" do
      discussion = Discussion.reflect_on_association(:channel)
      expect(discussion.macro).to eq(:belongs_to)
   end

   it "should belong to user" do
      discussion = Discussion.reflect_on_association(:user)
      expect(discussion.macro).to eq(:belongs_to)
   end
end