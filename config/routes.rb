Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: redirect('/quizzes')

  get 'quizzes', to: 'quizzes#index', as: 'quizzes'
  post 'quizzes', to: 'quizzes#create'
  get 'quizzes/new', to: 'quizzes#new', as: 'new_quiz'
  get 'quizzes/:id', to: 'quizzes#show', as: 'quiz'
  patch 'quizzes/:id', to: 'quizzes#update'
  delete 'quizzes/:id', to: 'quizzes#destroy'
  get 'quizzes/:id/edit', to: 'quizzes#edit', as: 'edit_quiz'
end
