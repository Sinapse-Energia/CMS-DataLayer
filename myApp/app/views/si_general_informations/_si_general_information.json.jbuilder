json.extract! si_general_information, :id, :name, :broker, :port, :user, :password, :created_at, :updated_at
json.url si_general_information_url(si_general_information, format: :json)
