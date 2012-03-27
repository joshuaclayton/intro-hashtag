IntroHashtag::Application.routes.draw do
  match "/:hashtag" => "searches#show"
end
