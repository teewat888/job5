require 'rails_helper'

RSpec.describe "job_applications/index", type: :view do
  before(:each) do
    assign(:job_applications, [
      JobApplication.create!(
        company_name: "Company Name",
        company_info: "Company Info",
        job_role: "Job Role",
        job_description: "Job Description",
        source: "Source",
        cover_letter: "MyText",
        resume: "MyText"
      ),
      JobApplication.create!(
        company_name: "Company Name",
        company_info: "Company Info",
        job_role: "Job Role",
        job_description: "Job Description",
        source: "Source",
        cover_letter: "MyText",
        resume: "MyText"
      )
    ])
  end

  it "renders a list of job_applications" do
    render
    assert_select "tr>td", text: "Company Name".to_s, count: 2
    assert_select "tr>td", text: "Company Info".to_s, count: 2
    assert_select "tr>td", text: "Job Role".to_s, count: 2
    assert_select "tr>td", text: "Job Description".to_s, count: 2
    assert_select "tr>td", text: "Source".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
