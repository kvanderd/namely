class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
    	t.string :first
    	t.string :meaning
    	t.string :occupation 
    	t.string :phrase
    end
  end
end
