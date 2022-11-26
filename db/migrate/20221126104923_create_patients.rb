class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |p|
      p.string :first_name
      p.string :last_name
      p.timestamps
    end
  end
end