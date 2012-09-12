require 'spec_helper'

describe Issue do
  subject {FactoryGirl.create(:issue)}
  it "should validate the length of the title" do
  	subject.title = "Blah blah blah blah blah blah blahBlah blah blah blah blah blah blahBlah blah blah blah blah blah blahBlah blah blah blah blah blah blah"
  	subject.save
  	subject.should_not be_valid
  end
  it {should validate_presence_of :title}
  it {should have_many :politicians}
  it {should have_many :stances}
end
