$ ->
  $("#twitter-search").submit (event) ->
    event.preventDefault()
    searchTerm = $(@).find("[name='hashtag']").val()

    $.get("/#{searchTerm}.json", (data) ->
      _.each data, (tweet) ->
        li = $("<li>").html(tweet.text)
        $("ul.tweets").append(li)
    )
