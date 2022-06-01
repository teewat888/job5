class AddUserToJob < ActiveRecord::Migration[7.0]
  def change
    add_reference :job_applications, :user, foreign_key: true, type: :uuid
  end
end
