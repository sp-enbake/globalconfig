require 'test_helper'

class GlobalConfigSettingTest < ActiveSupport::TestCase
  
  test "creating a setting" do
    value = 123
    globalsetting = GlobalConfigSetting.create(:data_key=>"integervalue", :value => value)
    new_globalsetting = GlobalConfigSetting.find(globalsetting.id)
    assert_equal(globalsetting.data_class, new_globalsetting.value.class.to_s)
  end
 
end
