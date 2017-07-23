require 'test_helper'

class RegisterUploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @register_upload = register_uploads(:one)
  end

  test "should get index" do
    get register_uploads_url
    assert_response :success
  end

  test "should get new" do
    get new_register_upload_url
    assert_response :success
  end

  test "should create register_upload" do
    assert_difference('RegisterUpload.count') do
      post register_uploads_url, params: { register_upload: { filename: @register_upload.filename, register_id: @register_upload.register_id } }
    end

    assert_redirected_to register_upload_url(RegisterUpload.last)
  end

  test "should show register_upload" do
    get register_upload_url(@register_upload)
    assert_response :success
  end

  test "should get edit" do
    get edit_register_upload_url(@register_upload)
    assert_response :success
  end

  test "should update register_upload" do
    patch register_upload_url(@register_upload), params: { register_upload: { filename: @register_upload.filename, register_id: @register_upload.register_id } }
    assert_redirected_to register_upload_url(@register_upload)
  end

  test "should destroy register_upload" do
    assert_difference('RegisterUpload.count', -1) do
      delete register_upload_url(@register_upload)
    end

    assert_redirected_to register_uploads_url
  end
end
