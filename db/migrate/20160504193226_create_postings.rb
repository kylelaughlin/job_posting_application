class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :company
      t.string :title
      t.text :description
      t.integer :salary
      t.string :location

      t.timestamps null: false
    end
  end
end
