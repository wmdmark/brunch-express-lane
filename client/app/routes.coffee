module.exports = (match) ->
    match '', 'pages#home'
    match 'sign-in', 'sessions#new'
    match 'sign-up', 'users#new'
