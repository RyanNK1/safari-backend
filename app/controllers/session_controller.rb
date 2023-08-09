class SessionsController < ApplicationController
    skip_before_action :authenticate_user, only: [:create]

    wrap_parameters :user, include: %i[username password]
end