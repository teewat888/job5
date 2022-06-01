require 'rails_helper'

RSpec.describe "job_applications/new", type: :view do
  before(:each) do
    assign(:job_application, JobApplication.new(
      company_name: "MyString",
      company_info: "MyString",
      job_role: "MyString",
      job_description: "MyString",
      source: "MyString",
      cover_letter: "MyText",
      resume: "MyText"
    ))
  end

  it "renders new job_application form" do
    render

    assert_select "form[action=?][method=?]", job_applications_path, "post" do

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
