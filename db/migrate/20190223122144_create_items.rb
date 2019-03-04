class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
        t.text :zikan
        t.text :basho
        t.text :off
        t.text :tobu
      t.timestamps
    end
  end
end
