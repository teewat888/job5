class CreateJobApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :job_applications, id: :uuid do |t|
      t.date :apply_date
      t.string :company_name
      t.text :company_info
      t.string :job_role
      t.text :job_description
      t.string :source
      t.text :cover_letter
      t.text :resume

      t.timestamps
    end
  end
end
