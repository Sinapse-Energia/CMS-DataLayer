class CreateCCalendarrules < ActiveRecord::Migration
  def change
    create_table :c_calendarrules do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :ep_controlprogram, index: true
      t.references :ec_calendar, index: true
      t.boolean :always

      t.timestamps null: false
    end
    add_foreign_key :c_calendarrules, :ep_controlprograms
    add_foreign_key :c_calendarrules, :ec_calendars
  end
end
