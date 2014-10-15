TrustyCms::Application.routes.draw do
  namespace :admin do
    resources :pages do
      post "/move_lower" => :move_lower, as: :page_move_lower
      post "/move_higher" => :move_higher, as: :page_move_higher
      post "/move_to_bottom" => :move_to_bottom, as: :page_move_to_bottom
      post "/move_to_top" => :move_to_top, as: :page_move_to_top
    end
  end
end

