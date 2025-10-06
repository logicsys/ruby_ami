# encoding: utf-8

require 'ruby_ami'

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f}

include RubyAMI

RSpec.configure do |config|
  config.mock_with :rspec
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
  config.raise_errors_for_deprecations!

  config.before :each do
    uuid = RubyAMI.new_uuid
    allow(RubyAMI).to receive(:new_uuid).and_return(uuid)
  end
end
