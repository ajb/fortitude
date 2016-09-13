describe "Fortitude cacheable method behavior in Rails", :type => :rails do
  uses_rails_with_template :cacheable_method_system_spec

  it "caches properly" do
    expect_match("localization?locale=en", /hello is: hello 1/)
    expect_match("localization?locale=en", /hello is: hello 1/)
    expect_match("localization?locale=fr", /hello is: bonjour 2/)
    expect_match("localization?locale=fr", /hello is: bonjour 2/)
  end
end