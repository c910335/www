require "./spec_helper"

describe WWW do
  it "gets the body of an url" do
    www.example.org.to_s.should eq("test body")
  end
end
