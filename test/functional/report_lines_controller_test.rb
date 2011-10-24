require 'test_helper'

class ReportLinesControllerTest < ActionController::TestCase
  setup do
    @report_line = report_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_line" do
    assert_difference('ReportLine.count') do
      post :create, :report_line => @report_line.attributes
    end

    assert_redirected_to report_line_path(assigns(:report_line))
  end

  test "should show report_line" do
    get :show, :id => @report_line.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @report_line.to_param
    assert_response :success
  end

  test "should update report_line" do
    put :update, :id => @report_line.to_param, :report_line => @report_line.attributes
    assert_redirected_to report_line_path(assigns(:report_line))
  end

  test "should destroy report_line" do
    assert_difference('ReportLine.count', -1) do
      delete :destroy, :id => @report_line.to_param
    end

    assert_redirected_to report_lines_path
  end
end
