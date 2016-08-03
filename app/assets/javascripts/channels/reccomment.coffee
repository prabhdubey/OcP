App.reccomment = App.cable.subscriptions.create "ReccommentChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log "reccomment connected"

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log "disconnected"

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log data
    $("#recent_comments").prepend(data)
