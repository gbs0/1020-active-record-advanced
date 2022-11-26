class CreateConsultations < ActiveRecord::Migration[7.0]
  def change
    create_table :consultations do |c|
      c.references :doctor, foreign_key: true
      c.references :patient, foreign_key: true
      c.date :date
      c.timestamps
    end
  end
end