class CreateSetsRecordsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :sets_records do |t|
      t.string :account
      t.string :contents
      t.integer :sets
      t.integer :reps
      t.integer :weight

      t.timestamps
    end
  end
end
