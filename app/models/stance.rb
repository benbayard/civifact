class Stance < ActiveRecord::Base
	belongs_to :politician
	belongs_to :issue

	validates :content, presence:true
	validates :citation, presence:true
	validates :citation_date, presence:true

	scope :with_issue, lambda{|issue_id| where(:issue_id => issue_id)}
	scope :confirmed, where(:approved => true)
	scope :unconfirmed, where(:approved => false)

	def confirmed?
		self.approved ? true : false
	end
end
