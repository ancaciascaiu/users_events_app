class CreateEvents < ActiveRecord::Migration
  def change
  	create_table :events do |t|
  		t.string :name, null: false
  		t.string :location, null: false
  		t.string :contact_person, null: false
  		t.string :date, null: false

  		t.timestamps
  	end
  end
end
