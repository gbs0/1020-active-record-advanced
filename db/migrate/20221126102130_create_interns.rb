class CreateInterns < ActiveRecord::Migration[7.0]
  def change
    create_table :interns do |i|
      i.string :first_name
      i.string :last_name
      # Um Campo que vai receber a chave primária
      i.references :doctor, foreign_key: true
      i.timestamps
    end
  end
end