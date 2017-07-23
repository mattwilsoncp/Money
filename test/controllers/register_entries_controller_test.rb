require 'test_helper'

class RegisterEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @register_entry = register_entries(:one)
  end

  test "should get index" do
    get register_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_register_entry_url
    assert_response :success
  end

  test "should create register_entry" do
    assert_difference('RegisterEntry.count') do
      post register_entries_url, params: { register_entry: { category_id: @register_entry.category_id, confirmation_number: @register_entry.confirmation_number, deposit: @register_entry.deposit, description: @register_entry.description, entry_date: @register_entry.entry_date, register_id: @register_entry.register_id, withdrawal: @register_entry.withdrawal } }
    end

    assert_redirected_to register_entry_url(RegisterEntry.last)
  end

  test "should show register_entry" do
    get register_entry_url(@register_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_register_entry_url(@register_entry)
    assert_response :success
  end

  test "should update register_entry" do
    patch register_entry_url(@register_entry), params: { register_entry: { category_id: @register_entry.category_id, confirmation_number: @register_entry.confirmation_number, deposit: @register_entry.deposit, description: @register_entry.description, entry_date: @register_entry.entry_date, register_id: @register_entry.register_id, withdrawal: @register_entry.withdrawal } }
    assert_redirected_to register_entry_url(@register_entry)
  end

  test "should destroy register_entry" do
    assert_difference('RegisterEntry.count', -1) do
      delete register_entry_url(@register_entry)
    end

    assert_redirected_to register_entries_url
  end
end
