Hctbox::Engine.routes.draw do
  scope module: :hctbox do
    resources :styleguides, only: :show
  end
end
