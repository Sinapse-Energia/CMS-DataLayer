class AddMqttDataToSiGeneralInformation < ActiveRecord::Migration
  def change
  	add_column :si_general_informations, :broker, :string
  	add_column :si_general_informations, :port, :integer
  	add_column :si_general_informations, :user, :string
  	add_column :si_general_informations, :password, :string
  end
end
