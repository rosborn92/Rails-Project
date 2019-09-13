Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/question_page' => 'main#question_page'
  get '/number' => 'main#number'
  get '/team' => 'main#team'
  get '/greeting/:name' => 'main#greeting'
  root to: "main#mainpage"
  get '/places' => 'main#places'
  get '/destinations' => 'main#destinations'
  get '/films' => 'main#films'
  get '/tvshows' => 'main#tvshows'
  get '/mainpage' => 'main#mainpage'
  get '/cuber' => 'main#cuber'
  get '/divisible' => 'main#divisible'
  get '/char_counter' => 'main#char_counter'
  get '/palindrome' => 'main#palindrome'
  get '/madlib' => 'main#madlib'
end
