class MapChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_for current_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def locate (data)
    puts (data)


    # Somewhere in your app this is called, perhaps from a NewCommentJob
    MapChannel.broadcast_to(
        current_user,
        objects: Coin.within(0.185, :origin => [32.064510, 34.774284]).as_json(only: [:id, :money_value, :lat, :lng])
    )
  end
end
