require 'test_helper'
require 'users_controller'

# Re-raise errors caught by the controller.
class UsersController; def rescue_action(e) raise e end; end

class UsersControllerTest < ActionController::TestCase
  fixtures :all

  def setup
    @controller = UsersController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    @user       = User.find(:first)
  end
  
  should_filter_params :ssn

end
