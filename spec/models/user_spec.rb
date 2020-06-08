require 'rails_helper'

RSpec.describe User, :type => :model do
   subject { 
      described_class.new(
         username: "Dawid24",
         password: "password", 
         email: "email_test@example.com"
      )  
   }

   it "is valid with valid attributes" do
      expect(subject).to be_valid
   end

   it "is not valid without a username" do
      subject.username = nil
      expect(subject).to_not be_valid
   end

   it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
   end

   it "is not valid without a email" do
      subject.email = nil
      expect(subject).to_not be_valid
   end

   it "should have many discussions" do
      user = User.reflect_on_association(:discussions)
      expect(user.macro).to eq(:has_many)
   end

   it "should have many channels" do
      user = User.reflect_on_association(:channels)
      expect(user.macro).to eq(:has_many)
   end
end