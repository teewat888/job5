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
#
class JobApplication < ApplicationRecord
end
