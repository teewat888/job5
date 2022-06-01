json.extract! job_application, :id, :apply_date, :company_name, :company_info, :job_role, :job_description, :source, :cover_letter, :resume, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)
