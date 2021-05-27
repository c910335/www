require "./spec_helper"

www example

describe WWW do
  describe "#to_s" do
    it "gets the body of an url" do
      www.example.org.to_s.should eq("test body 1")
    end
  end

  describe "#inspect" do
    it "gets the body of an url with String#inspect" do
      www.example.com.inspect.should eq("\"test body 2\"")
    end
  end

  context "with other subdomain" do
    describe "#to_s" do
      it "gets the body of an url" do
        example.org.to_s.should eq("test body 3")
      end
    end

    describe "#inspect" do
      it "gets the body of an url with String#inspect" do
        example.com.inspect.should eq("\"test body 4\"")
      end
    end
  end
end
