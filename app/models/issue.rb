class Issue < ActiveRecord::Base
	has_many :stances
	has_many :politicians, :through => :stances

	validates :title, uniqueness: true, presence:true, :length => {maximum: 30}
end
