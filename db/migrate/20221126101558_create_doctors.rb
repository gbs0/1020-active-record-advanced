class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |d|
      d.string :first_name
      d.string :last_name
      d.timestamps
    end
  end
end