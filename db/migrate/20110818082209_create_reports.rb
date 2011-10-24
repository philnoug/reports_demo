class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.integer :user_id
      t.string :client
      t.string :chantier
      t.boolean :isNight
      t.integer :temperature
      t.string :sky_state

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
