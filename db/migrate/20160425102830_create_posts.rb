class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :subj
      t.string :cont
      
      
      
      t.timestamps null: false
    end
  end
end
