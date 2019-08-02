class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
    	t.belongs_to :doctor
        t.belongs_to :patient
        t.belongs_to :city
  		t.datetime :date

      t.timestamps
    end
  end
end