require 'spec_helper'

describe Stance do
  subject {FactoryGirl.create(:stance)}
  it {should respond_to :content}
  it {should respond_to :citation}
  it {should respond_to :citation_date}
  it {should validate_presence_of :content}
  it {should validate_presence_of :citation}
  it {should belong_to :politician}
  it {should belong_to :issue}
  it {should respond_to :approved}

  it "should return all approved stances" do
  	show = []
  	dontshow = []
  	5.times do 
  		show << FactoryGirl.create(:stance, approved: true)
  	end
  	5.times do 
  		dontshow << FactoryGirl.create(:stance, approved: false)
  	end
  	Stance.confirmed.should == show
  end
  it "should return all unapproved stances" do
  	show = []
  	dontshow = []
  	5.times do 
  		show << FactoryGirl.create(:stance, approved: true)
  	end
  	5.times do 
  		dontshow << FactoryGirl.create(:stance, approved: false)
  	end
  	Stance.unconfirmed.should == dontshow
  end

  it {should respond_to :contradictory}
  
end

