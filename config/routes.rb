Rails.application.routes.draw do
    
  get 'users/new'

  root 'static_pages#home'
    
    get  '/help',    to: 'static_pages#help'
    get  '/about',   to: 'static_pages#about'
    get  '/contact', to: 'static_pages#contact'

    #Use the below for basic routing, not named routes liek above
#  get 'static_pages/home'
#  get 'static_pages/help'
#  get  'static_pages/about'
#  get  'static_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    
end
