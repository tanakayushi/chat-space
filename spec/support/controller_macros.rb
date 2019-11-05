module ControllerMacros
  def login(user)
    @request.enb["devise.mapping"]
    sing_in user
  end
end
