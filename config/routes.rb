Rails.application.routes.draw do
  scope module: :app, as: 'app', constraints: { subdomain: 'roundabout' } do
    root 'home#index'
  end

  match "*unmatched_route", to: 'link#show', via: :all
  root to: "link#show", via: :all
end
