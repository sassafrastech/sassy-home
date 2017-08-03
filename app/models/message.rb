class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :text, :body

  validates :name, :email, :text, presence: true
  validates :email, format: { with: /.+@.+\..+/ }, allow_blank: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=",value)
    end
  end

  def persisted?
    false
  end

end
