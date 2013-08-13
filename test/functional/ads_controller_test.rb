require 'test_helper'

class AdsControllerTest < ActionController::TestCase
  setup do
    @ad = ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad" do
    assert_difference('Ad.count') do
      post :create, ad: { about: @ad.about, area: @ad.area, city: @ad.city, col: @ad.col, company_name: @ad.company_name, contact: @ad.contact, contact_email: @ad.contact_email, contact_person: @ad.contact_person, country: @ad.country, datax: @ad.datax, datay: @ad.datay, house_no: @ad.house_no, pin_code: @ad.pin_code, row: @ad.row, state: @ad.state, street_name: @ad.street_name, title: @ad.title }
    end

    assert_redirected_to ad_path(assigns(:ad))
  end

  test "should show ad" do
    get :show, id: @ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad
    assert_response :success
  end

  test "should update ad" do
    put :update, id: @ad, ad: { about: @ad.about, area: @ad.area, city: @ad.city, col: @ad.col, company_name: @ad.company_name, contact: @ad.contact, contact_email: @ad.contact_email, contact_person: @ad.contact_person, country: @ad.country, datax: @ad.datax, datay: @ad.datay, house_no: @ad.house_no, pin_code: @ad.pin_code, row: @ad.row, state: @ad.state, street_name: @ad.street_name, title: @ad.title }
    assert_redirected_to ad_path(assigns(:ad))
  end

  test "should destroy ad" do
    assert_difference('Ad.count', -1) do
      delete :destroy, id: @ad
    end

    assert_redirected_to ads_path
  end
end
