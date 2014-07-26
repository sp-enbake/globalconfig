class GlobalConfigSetting < ActiveRecord::Base
  validates_presence_of :data_key
  validates_uniqueness_of :data_key
  @return_val = nil

  # Sets the data type of the data.
  def value=(obj)
    self.data_class = obj.class.to_s
    write_attribute(:data, obj)
    @return_val = obj
  end
  # It checks the data type and converts to that data accordingly.
  def value
    if @return_val.nil?
	    @return_val = ''
	    case self.data_class
	    when "String"
	      @return_val = self.data
	    when "Fixnum"
	      @return_val = self.data.to_i
	    when "Float"
	      @return_val = self.data.to_f
	    when "NilClass"
	      @return_val = nil
	    when "TrueClass"
	      @return_val = true
	    when "FalseClass"
	      @return_val = false
	    end
	  end
    @return_val
  end




end