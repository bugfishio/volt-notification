class NotificationMessage < Volt::Model
  field :body, String
  field :icon, String
  field :direction, String
  field :tag, String
  field :language, String
  field :title, String

  def self.say(title, body)
    msg = NotificationMessage.new
    msg.title = title
    msg.body = body
    msg
  end
end
