require "config/active_record_setting.rb"

class CreateSample < ActiveRecord::Migration[7.0]
  def self.up
    create_table :samples do |t|
      t.text :name
    end
  end

  def self.down
    drop_table :samples
  end
end

CreateSample.migrate(:up)