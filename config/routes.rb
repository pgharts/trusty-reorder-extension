TrustyCms::Application.routes.draw do
  namespace :admin do
    resources :pages do
      get ":id/move_lower" => :move_lower
      get ":id/move_higher" => :move_higher
      get ":id/move_to_bottom" => :move_to_bottom
      get ":id/move_to_top" => :move_to_top
    end
  end
end

