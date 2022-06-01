require 'rails_helper'

RSpec.describe "job_applications/show", type: :view do
  before(:each) do
    @job_application = assign(:job_application, JobApplication.create!(
      company_name: "Company Name",
      company_info: "Company Info",
      job_role: "Job Role",
      job_description: "Job Description",
      source: "Source",
      cover_letter: "MyText",
      resume: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Company Info/)
    expect(rendered).to match(/Job Role/)
    expect(rendered).to match(/Job Description/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
