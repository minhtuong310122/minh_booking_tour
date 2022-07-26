class CreateBuyers < ActiveRecord::Migration[6.1]
  def change
    create_table :buyers do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.datetime :date_of_birth
      t.integer :passport
      t.references :booking

      t.timestamps
    end
  end
end
