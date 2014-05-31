require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, match: { assignment_id: @match.assignment_id, available1_id: @match.available1_id, available2_id: @match.available2_id, begin: @match.begin, end: @match.end, user1_commitment: @match.user1_commitment, user1_response?: @match.user1_response?, user2_commitment: @match.user2_commitment, user2_response?: @match.user2_response? }
    end

    assert_redirected_to match_path(assigns(:match))
  end

  test "should show match" do
    get :show, id: @match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match
    assert_response :success
  end

  test "should update match" do
    patch :update, id: @match, match: { assignment_id: @match.assignment_id, available1_id: @match.available1_id, available2_id: @match.available2_id, begin: @match.begin, end: @match.end, user1_commitment: @match.user1_commitment, user1_response?: @match.user1_response?, user2_commitment: @match.user2_commitment, user2_response?: @match.user2_response? }
    assert_redirected_to match_path(assigns(:match))
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_redirected_to matches_path
  end
end
