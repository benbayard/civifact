require 'spec_helper'

describe Politician do
	subject {FactoryGirl.create(:politician)}
	it {should respond_to :birthdate}
	it {should respond_to :headshot}
	it {should respond_to :education}
	it {should respond_to :net_worth}
	it {should respond_to :current_position}
	it {should respond_to :previous_position}
	it {should respond_to :website}
	it {should respond_to :stances}
	it {should respond_to :contributors}
	it {should have_many :stances}
	it {should have_many :issues}
	it {should have_many :contributors}
	it {should respond_to :name}
	it "should return a titleized name" do
		subject.first_name = "ben"
		subject.last_name = "bayard"
		subject.name.should == "Ben Bayard"
	end
	it "should return flip-flop if an issue's stances are contradictory" do 
    	FactoryGirl.create(:stance, politician_id:subject.id, issue_id:FactoryGirl.create(:issue).id, contradictory:false)
    	FactoryGirl.create(:stance, politician_id:subject.id, issue_id:Issue.last.id, contradictory:true)
    	subject.flipflop(Issue.last).should == true
	end
	it "should not be a flip-flip if an issue's stances are not contradictory" do
		FactoryGirl.create(:stance, politician_id:subject.id, issue_id:FactoryGirl.create(:issue).id, contradictory:false)
		FactoryGirl.create(:stance, politician_id:subject.id, issue_id:Issue.last.id, contradictory:false)
    	subject.flipflop(Issue.last).should == false
	end
end
