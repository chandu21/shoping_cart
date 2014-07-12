class RenameColumnToCountres < ActiveRecord::Migration
  def change
  	rename_column :countries ,:code ,:p_code
  end
end
