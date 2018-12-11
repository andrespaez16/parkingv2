class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.string :type_vehicle
      t.integer :rate

      t.timestamps
    end
  end
end
