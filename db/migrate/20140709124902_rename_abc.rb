class RenameAbc < ActiveRecord::Migration
  def change
  	rename_table :abcs ,:countries
  end
end
