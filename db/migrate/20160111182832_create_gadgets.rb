class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|
      t.string :make
      t.string :model
      t.boolean :available
      t.datetime :checked_out
      t.datetime :checked_in
      t.references :user, index: true
      t.string :location
      t.string :orientation
      t.string :os_version

      t.timestamps
    end
  end
end
