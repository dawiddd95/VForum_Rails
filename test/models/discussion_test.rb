require 'test_helper'

class DiscussionTest < ActiveSupport::TestCase
  subject {
    described_class.new(
      title: "Title of discussion",
      content: "Content of this discussion"
    )
  }

  it "is valid with valid attributes"
    expect(subject).to be_valid
  end

  it "is not valid without a title"
    subject.title = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a content"
    subject.content = nil
    expect(subject).to_not be_valid
  end


  it "is not valid without a min 3 letters title"
  it "is not valid without a min 3 letters content"
end
