class CreateLoanLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_logs do |t|
      t.string :action
      t.string :comment
      t.references :loan, foreign_key: true

      t.timestamps
    end
  end
end
