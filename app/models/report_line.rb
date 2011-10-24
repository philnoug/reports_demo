class ReportLine < ActiveRecord::Base

	belongs_to :report
	
	validates_presence_of :report_id, :pk, :voie
	
end
