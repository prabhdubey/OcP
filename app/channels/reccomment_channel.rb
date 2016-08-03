# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class ReccommentChannel < ApplicationCable::Channel
  def subscribed
     stream_from "reccomment_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

   def speak(data)
    ActionCable.server.broadcast "reccomment_channel", message: data['message']
  end

end
