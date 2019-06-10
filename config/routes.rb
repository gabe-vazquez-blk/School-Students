Rails.application.routes.draw do

  #schools index page
  get '/schools', to: 'schools#index'

  #students new page
  get '/students/new', to: 'students#new'

  #students create and save new student
  post '/students', to: 'students#create'

  #student edit
  get '/students/:id/edit', to: 'students#edit'

  #student update
  patch '/students/:id', to: 'students#update'

  #schools show page
  get '/schools/:id', to: 'schools#show', as: 'school'

  #students show page
  get '/students/:id', to: 'students#show', as: 'student'

  #delete student
  delete '/students/:id', to: 'students#delete'

end
