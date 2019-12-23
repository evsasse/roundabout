class CreateLink < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :short_url, null: false, index: true
      t.string :long_url, null: false, index: true

      t.timestamps
    end
  end
end
