class AddInternToPatients < ActiveRecord::Migration[7.0]
  def change
    add_reference :patients, :intern, foreing_key: true
  end
end