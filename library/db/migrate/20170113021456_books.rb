class Books < ActiveRecord::Migration[5.0]

   def self.up
	create_table :books do |t|
	   t.column :name, :string, :limit =>32, :null => false
	   t.column :price, :float
	   t.column :subject_id, :integer
	   t.column :description, :text
	   t.column :created_at, :timestamp
	end
   end

   def self.down
	drop_table :books
   end

end
