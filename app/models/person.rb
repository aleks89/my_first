class Person < ActiveRecord::Base

	validates :first_name, presence: true
	validates :last_name, presence: true

	before_save :cleanup

	scope :qwe, select('*')
	scope :qweqwe, lambda {|id| where(primary_key=>id)}
	scope :qweqweqwe, qwe.order("last_name ASC")

	def name
		"#{:first_name} #{:last_name}"
	end

	def cleanup

		self[:first_name]=self[:first_name].capitalize

	end

end
