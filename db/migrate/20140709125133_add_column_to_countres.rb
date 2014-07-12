class AddColumnToCountres < ActiveRecord::Migration
  def change
  	add_column :countries ,:code ,:integer
  end
end
