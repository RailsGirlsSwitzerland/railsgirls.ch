class Member
  include HasProperties
  include Gravtastic
  gravtastic :filetype => :png, :size => 200


  has_properties :name, :email, :twitter, :github, :web, :description, :group

  def initialize params
    super
  end

end
