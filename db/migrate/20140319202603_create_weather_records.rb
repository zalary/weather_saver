class CreateWeatherRecords < ActiveRecord::Migration
  def change
    create_table :weather_records do |t|
      t.string :zip
      t.string :temp
      t.string :description

      t.timestamps
    end
  end
end
