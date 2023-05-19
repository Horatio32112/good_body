require 'uri'
require 'net/http'
require_relative '../domain_models/common_error'

class LoginController < ApplicationController

  def new
  end

  def login

    email = params[:email].strip

    password = params[:password].strip

    uuid = SecureRandom.uuid

    login_user = LoginUser.new(uuid, email)

    if email.blank? || password.blank?
        flash.now[:error] = 'Please fill in all fields.'
        render :new
        return
    end

    begin

        if login_user.login(password)
            session[:account] = params[:account]
            render :create_success
        end

    rescue NoUserError
        flash.now[:error] = 'Email wrong. Please re-enter your email and password.'
        render :new

    rescue WrongPasswordError
        flash.now[:error] = 'Password wrong. Please re-enter your password.'
        render :new
    end

  end

end
