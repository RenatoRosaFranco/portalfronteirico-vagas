class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string :email
      t.integer :modality
      t.string :token
      t.boolean :status
      t.date :signup_date
      t.date :cancel_date

      t.timestamps
    end
  end
end
