class CreateDinosaurs < ActiveRecord::Migration[5.1]
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.string :string
      t.integer :age
      t.string :image_url

      t.timestamps
    end
  end
end

# migration file has the change method to update the database
