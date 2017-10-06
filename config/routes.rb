Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  constraints subdomain: "hooks" do
    post '/slack' => 'webhooks#receive', as: :receive_webhooks
  end
end
