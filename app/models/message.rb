class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  validates_presence_of :body, :conversation_id, :user_id
  after_create :broadcast_message

  def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end

  def broadcast_message
    ActionCable.server.broadcast("conversation_#{conversation.id}",
                                 message_partial: "<div class='msg-msg'>#{body}</div>",
                                 current_user_id: user.id)
  end
end
