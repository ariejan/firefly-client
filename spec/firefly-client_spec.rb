require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "FireflyClient" do
	
  describe "successful calls" do
		before(:each) do
		  FakeWeb.register_uri(:post, /^http:\/\/tst\.hst\/api\/add.*google\.com$/, :body => "http://tst.hst/7dX")
		  FakeWeb.register_uri(:post, /^http:\/\/tst\.hst\/api\/add.*yahoo\.com$/, :body => "http://tst.hst/rX9")
			@client = Firefly::Client.new('http://tst.hst', 'test')
		end

	  it "should call http://test.host/api/add correctly" do
      @client.shorten("http://google.com").should eql("http://tst.hst/7dX")
	  end

		it "should shorten multiple urls correctly" do
      result = @client.shorten(["http://google.com", "http://yahoo.com"])
			result["http://google.com"].should eql("http://tst.hst/7dX")
			result["http://yahoo.com"].should eql("http://tst.hst/rX9")
		end
	end

  describe "API permission errors" do
		before(:each) do
		  FakeWeb.register_uri(:post, /^http:\/\/tst\.hst\/api\/add.*google\.com$/, :status => 401, :body => "Permission denied")
			@client = Firefly::Client.new('http://tst.hst', 'fail')
		end

	  it "should raise an error" do
			lambda {
        @client.shorten("http://google.com")
			}.should raise_error
	  end
	end
end
