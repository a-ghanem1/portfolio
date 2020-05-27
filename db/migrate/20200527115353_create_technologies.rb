class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies do |t|
      t.string :name
	  t.belongs_to :portfolio
      
      t.timestamps
    end
  end
end
