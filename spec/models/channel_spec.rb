require 'rails_helper'

RSpec.describe Channel, :type => :model do
   subject {
      described_class.new(
         channel: 'Coding'
      )
   }

   it "is valid with valid attributes" do
      expect(subject).to be_valid
   end

   it "is not valid without a channel name" do
      subject.channel = nil
      expect(subject).to_not be_valid
   end

   it "should have many discussions" do
      channel = Channel.reflect_on_association(:discussions)
      expect(channel.macro).to eq(:has_many)
   end

   it "should have many users" do
      channel = Channel.reflect_on_association(:users)
      expect(channel.macro).to eq(:has_many)
   end
end