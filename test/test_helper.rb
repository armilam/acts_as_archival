ENV["RAILS_ENV"] = "test"
["/../../../../config/environment", 
#  "/../lib/expected_behavior/acts_as_archival_active_record_methods",
#  "/../lib/expected_behavior/acts_as_archival",
 "/more_assertions",
 "/local_test_helper"
].each do |file_to_load|
  require File.expand_path(File.dirname(__FILE__) + file_to_load)
end

require 'test_help'
require 'assertions'

%w(hole mole muskrat squirrel kitty puppy ship rat orange).each do |a|
  require File.expand_path(File.dirname(__FILE__) + "/" + a)
end

class ActiveSupport::TestCase
  self.use_transactional_fixtures = true

  self.use_instantiated_fixtures  = false

  fixtures :all
end