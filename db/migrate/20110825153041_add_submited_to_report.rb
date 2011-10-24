class AddSubmitedToReport < ActiveRecord::Migration
  def self.up
  	add_column :reports, :submitted, :boolean

  end

  def self.down
  end
end
