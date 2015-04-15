class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

# new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#     user_session POST   /users/sign_in(.:format)       devise/sessions#create
# destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#    user_password POST   /users/password(.:format)      devise/passwords#create
# new_user_password GET    /users/password/new(.:format)  devise/passwords#new
# edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                  PATCH  /users/password(.:format)      devise/passwords#update
#                  PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
# user_registration POST   /users(.:format)               devise/registrations#create
# new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
# edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                  PATCH  /users(.:format)               devise/registrations#update
#                  PUT    /users(.:format)               devise/registrations#update
#                  DELETE /users(.:format)               devise/registrations#destroy
#            posts GET    /posts(.:format)               posts#index
#                  POST   /posts(.:format)               posts#create
#         new_post GET    /posts/new(.:format)           posts#new
#        edit_post GET    /posts/:id/edit(.:format)      posts#edit
#             post GET    /posts/:id(.:format)           posts#show
#                  PATCH  /posts/:id(.:format)           posts#update
#                  PUT    /posts/:id(.:format)           posts#update
#                  DELETE /posts/:id(.:format)           posts#destroy
#             tags GET    /tags(.:format)                tags#index
#                  POST   /tags(.:format)                tags#create
#          new_tag GET    /tags/new(.:format)            tags#new
#         edit_tag GET    /tags/:id/edit(.:format)       tags#edit
#              tag GET    /tags/:id(.:format)            tags#show
#                  PATCH  /tags/:id(.:format)            tags#update
#                  PUT    /tags/:id(.:format)            tags#update
#                  DELETE /tags/:id(.:format)            tags#destroy
