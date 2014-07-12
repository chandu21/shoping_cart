class CreateAbcs < ActiveRecord::Migration
  def change
    create_table :abcs do |t|
    		t.string :name ,:limit => 50 ,:null => false ,:default => "blah"
      t.timestamps
    end
  end
end
