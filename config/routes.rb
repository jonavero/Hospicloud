Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :branch_offices
      resources :ars
      resources :doctors
      resources :medicines
      get '/medicine/search/description' => 'medicines#search',  as: :SearchMedicine
      resources :rooms
      resources :beds
      resources :patients
      get '/patient/:identityCard' => 'patients#patientcard',param: :identityCard, as: :IdentityCardSearch
      resources :entries



    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
