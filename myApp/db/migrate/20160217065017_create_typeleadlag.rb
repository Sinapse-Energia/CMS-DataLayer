class CreateTypeleadlag < ActiveRecord::Migration
  def self.up
   

    sql = <<-SQL
CREATE TYPE pwfsense AS ENUM ('Lead', 'Lag');



    SQL

    execute sql
  end
end
