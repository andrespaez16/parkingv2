class CreateArrives < ActiveRecord::Migration[5.2]
  def change
    create_table :arrives do |t|
      t.boolean :status
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
