class SessionController < ApplicationController

  # Login form
  def new
    render :new
  end

  # Post request from login form
  def create
    # Serach for candidate
    if Candidate.find_by(email: params[:email])
      candidate = Candidate.find_by(email: params[:email])
      if candidate && candidate.authenticate(params[:password])
        session[:candidate_id] = candidate_id
        redirect_to '/'
      end
    # Now check if its a client
    elsif Client.find_by(email: params[:email])
      candidate = Candidate.find_by(email: params[:email])
      if client && client.authenticate(params[:password])
        session[:client_id] = client_id
        redirect_to '/'
      end
    end
    # If neither work, go back to login form
    else
      render :new
    end

  end

  # Sign up form candidates
  def sign_up_candidate

  end

  # Post request from candidate sign up form
  def candidate_sign_up

  end

  # Sign up form clients
  def sign_up_client

  end

  # Post request from client sign up form
  def client_sign_up

  end

end
