# frozen_string_literal: true

require 'test_helper'

class EvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation = evaluations(:one)
  end

  test 'should get index' do
    get evaluations_url
    assert_response :success
  end

  test 'should create evaluation' do
    assert_difference('Evaluation.count') do
      post evaluations_url, params: { evaluation: { assignment_id: @evaluation.assignment_id, comment: @evaluation.comment, group_id: @evaluation.group_id, user_id: @evaluation.user_id } }
    end

    assert_redirected_to evaluation_url(Evaluation.last)
  end

  test 'should show evaluation' do
    get evaluation_url(@evaluation)
    assert_response :success
  end

  test 'should update evaluation' do
    patch evaluation_url(@evaluation), params: { evaluation: { assignment_id: @evaluation.assignment_id, comment: @evaluation.comment, group_id: @evaluation.group_id, user_id: @evaluation.user_id } }
    assert_redirected_to evaluation_url(@evaluation)
  end

  test 'should destroy evaluation' do
    assert_difference('Evaluation.count', -1) do
      delete evaluation_url(@evaluation)
    end

    assert_redirected_to evaluations_url
  end
end
