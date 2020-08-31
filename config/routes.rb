Rails.application.routes.draw do
  namespace :public do
    resources :contacts
  end
    # 送信完了画面
  root 'homes#top'
  get "homes/about" =>"homes#about" ,as: "about"
  scope module: 'public' do
     resource :users, only: [:show]
     resources :class_tasks,only: [:index,:show]
      # resources :attendences,only: [:show]

     resources :centers,only: [:create,:update,:destory]
       post "centers/all_up", to: "centers#all_up",as: "all_up"
     resources :attendences,only: [:update,:show]
  end

  namespace :admin do
    get 'homes/top'
    resources :class_tasks, only:[:new,:create,:update,:show]
    resources :users,only:[:index,:show]
    resources :attendences,only:[:show]
      devise_for :admin_users, controllers: {
      sessions: 'admin/admin_users/sessions',
      registrations: 'admin/admin_users/registrations',
      passwords: 'admin/admin_users/passwords'
    }
  end
    scope module: 'public' do
    devise_for :users, controllers: {
      sessions: 'public/users/sessions',
      registrations: 'public/users/registrations',
      passwords: 'public/users/passwords'
    }
  end
end
