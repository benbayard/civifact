class Politician < ActiveRecord::Base
	attr_accessible :headshot, :first_name, :last_name, :net_worth, :current_position, :previous_position
  	has_attached_file :headshot
    has_many :stances
    has_many :contributors
    has_many :issues, :through => :stances
    has_many :contributors

    validates :first_name, presence: true
    validates :last_name, presence: true

    def name 
    	"#{self.first_name} #{self.last_name}".titleize
    end

    def flipflop(issue)
        self.stances.with_issue(issue.id).each do |stance|
            puts stance
            if stance.contradictory
                return true
            end
        end
        return false
    end
end
