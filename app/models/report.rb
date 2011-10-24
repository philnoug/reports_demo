class Report < ActiveRecord::Base

	has_many :report_lines, :dependent => :destroy
	belongs_to :user
	
	validates_presence_of :user_id, :client, :chantier

end
