# == Schema Information
#
# Table name: job_applications
#
#  id              :uuid             not null, primary key
#  apply_date      :date
#  company_info    :text
#  company_name    :string
#  cover_letter    :text
#  job_description :text
#  job_role        :string
#  resume          :text
#  source          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :uuid
#
# Indexes
#
#  index_job_applications_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
