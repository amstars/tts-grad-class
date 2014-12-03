require 'rails_helper'

RSpec.describe Events, :type => :model do
  context "validation" do
    subject{ build(:event) }
    it {should be_valid}
    it "should require a url" do
      expect(
      build(:event, url: nil)
      ).not_to be_valid
    end
    it "should require a name" do
      expect(
      build(:event, name: nil)
      ).not_to be_valid
    end    
  end
end
