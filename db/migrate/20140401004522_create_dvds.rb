class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :title
      t.string :band

      t.timestamps
    end
  end
end
