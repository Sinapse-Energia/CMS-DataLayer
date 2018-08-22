class Account < ActiveRecord::Base
  belongs_to :owner
  belongs_to :v_account
end
