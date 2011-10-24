class AddLatLonProducttoReportLines < ActiveRecord::Migration
  def self.up
  	add_column :report_lines, :lat, :string
  	add_column :report_lines, :lon, :string
  	add_column :report_lines, :product_name, :string
  	add_column :report_lines, :product_price, :integer
  end

  def self.down
  end
end
