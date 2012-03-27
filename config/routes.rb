IntroHashtag::Application.routes.draw do
  root to: "high_voltage/pages#show", id: "homepage"
  match "/:hashtag.json" => "searches#show"
end
