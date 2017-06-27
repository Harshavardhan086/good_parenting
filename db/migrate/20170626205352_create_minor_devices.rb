class CreateMinorDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :minor_devices do |t|
      t.integer :minor_id
      t.string :uuid
      t.string :end_point_arn

      t.timestamps
    end
  end
end
