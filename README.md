# To create a global config, we can do it through the rails console:

# GlobalConfigSetting.create(:value=>"todo@gmail.com",:data_key=>"email")

# To access the value :

# d = GlobalConfigSetting.last
# d.value

# To access key:
# d = GlobalConfigSetting.last
# d.key
