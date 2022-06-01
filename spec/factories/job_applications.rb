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
FactoryBot.define do
  factory :job_application do
    apply_date { "2022-06-01" }
    company_name { "MyString" }
    company_info { "MyString" }
    job_role { "MyString" }
    job_description { "MyString" }
    source { "MyString" }
    cover_letter { "MyText" }
    resume { "MyText" }
  end
end
