class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.integer :user_id
      t.string :firstname
      t.string :lastname
      t.text :address
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
