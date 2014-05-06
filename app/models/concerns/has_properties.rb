module HasProperties

  attr_accessor :properties

  def has_properties *params
    @properties = params
    instance_eval { attr_reader *params }
  end

  def self.included base
    base.extend self
  end

  def initialize params
    params.each {|k,v|
      instance_variable_set "@#{k}", v if self.class.properties.member?(k.to_sym)
    } if params.is_a? Hash
  end
end
