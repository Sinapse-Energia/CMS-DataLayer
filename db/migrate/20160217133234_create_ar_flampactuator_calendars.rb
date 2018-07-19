class CreateArFlampactuatorCalendars < ActiveRecord::Migration
  def change
    create_table :ar_flampactuator_calendars do |t|
      t.references :f_lampactuator, index: true
      t.references :ec_calendar, index: true

      t.timestamps null: false
    end
    add_foreign_key :ar_flampactuator_calendars, :f_lampactuators, on_delete: :cascade
    add_foreign_key :ar_flampactuator_calendars, :ec_calendars
  end
end
