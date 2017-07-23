require 'test_helper'

class RegisterUploadEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @register_upload_entry = register_upload_entries(:one)
  end

  test "should get index" do
    get register_upload_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_register_upload_entry_url
    assert_response :success
  end

  test "should create register_upload_entry" do
    assert_difference('RegisterUploadEntry.count') do
      post register_upload_entries_url, params: { register_upload_entry: { category_id: @register_upload_entry.category_id, deposit: @register_upload_entry.deposit, description: @register_upload_entry.description, entry_date: @register_upload_entry.entry_date, register_id: @register_upload_entry.register_id, register_upload_id: @register_upload_entry.register_upload_id, withdrawal: @register_upload_entry.withdrawal } }
    end

    assert_redirected_to register_upload_entry_url(RegisterUploadEntry.last)
  end

  test "should show register_upload_entry" do
    get register_upload_entry_url(@register_upload_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_register_upload_entry_url(@register_upload_entry)
    assert_response :success
  end

  test "should update register_upload_entry" do
    patch register_upload_entry_url(@register_upload_entry), params: { register_upload_entry: { category_id: @register_upload_entry.category_id, deposit: @register_upload_entry.deposit, description: @register_upload_entry.description, entry_date: @register_upload_entry.entry_date, register_id: @register_upload_entry.register_id, register_upload_id: @register_upload_entry.register_upload_id, withdrawal: @register_upload_entry.withdrawal } }
    assert_redirected_to register_upload_entry_url(@register_upload_entry)
  end

  test "should destroy register_upload_entry" do
    assert_difference('RegisterUploadEntry.count', -1) do
      delete register_upload_entry_url(@register_upload_entry)
    end

    assert_redirected_to register_upload_entries_url
  end
end
