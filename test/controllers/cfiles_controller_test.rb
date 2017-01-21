require 'test_helper'

class CfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cfile = cfiles(:one)
  end

  test "should get index" do
    get cfiles_url
    assert_response :success
  end

  test "should get new" do
    get new_cfile_url
    assert_response :success
  end

  test "should create cfile" do
    assert_difference('Cfile.count') do
      post cfiles_url, params: { cfile: { contract_id: @cfile.contract_id, document: @cfile.document, name: @cfile.name } }
    end

    assert_redirected_to cfile_url(Cfile.last)
  end

  test "should show cfile" do
    get cfile_url(@cfile)
    assert_response :success
  end

  test "should get edit" do
    get edit_cfile_url(@cfile)
    assert_response :success
  end

  test "should update cfile" do
    patch cfile_url(@cfile), params: { cfile: { contract_id: @cfile.contract_id, document: @cfile.document, name: @cfile.name } }
    assert_redirected_to cfile_url(@cfile)
  end

  test "should destroy cfile" do
    assert_difference('Cfile.count', -1) do
      delete cfile_url(@cfile)
    end

    assert_redirected_to cfiles_url
  end
end
