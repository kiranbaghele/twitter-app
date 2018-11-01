class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :twitter_id
      t.string :tweet
      t.string :search_key

      t.timestamps
    end
  end
end
