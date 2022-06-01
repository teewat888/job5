require 'rails_helper'

RSpec.describe "job_applications/edit", type: :view do
  before(:each) do
    @job_application = assign(:job_application, JobApplication.create!(
      company_name: "MyString",
      company_info: "MyString",
      job_role: "MyString",
      job_description: "MyString",
      source: "MyString",
      cover_letter: "MyText",
      resume: "MyText"
    ))
  end

  it "renders the edit job_application form" do
    render

    assert_select "form[action=?][method=?]", job_application_path(@job_application), "post" do

      assert_select "input[name=?]", "job_application[company_name]"

      assert_select "input[name=?]", "job_application[company_info]"

      assert_select "input[name=?]", "job_application[job_role]"

      assert_select "input[name=?]", "job_application[job_description]"

      assert_select "input[name=?]", "job_application[source]"

      assert_select "textarea[name=?]", "job_application[cover_letter]"

      assert_select "textarea[name=?]", "job_application[resume]"
    end
  end
end
