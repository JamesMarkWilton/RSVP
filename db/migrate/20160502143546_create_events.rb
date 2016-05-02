class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :host
      t.datetime :datetime
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.text :description

      t.timestamps null: false
    end
  end
end
