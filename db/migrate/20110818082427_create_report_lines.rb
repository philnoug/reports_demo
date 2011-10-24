class CreateReportLines < ActiveRecord::Migration
  def self.up
    create_table :report_lines do |t|
      t.integer :report_id
      t.string :pk
      t.integer :voie
      t.string :file
      t.string :conso

      t.timestamps
    end
  end

  def self.down
    drop_table :report_lines
  end
end
