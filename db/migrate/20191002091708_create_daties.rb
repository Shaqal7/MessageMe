class CreateDaties < ActiveRecord::Migration[6.0]
  def change
    create_table :daties do |t|
      t.date :start_date
      t.date :end_date
      t.string :localisation
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
