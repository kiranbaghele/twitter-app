class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.string :message
      t.string :string

      t.timestamps
    end
  end
end
