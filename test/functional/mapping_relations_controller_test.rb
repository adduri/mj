require 'test_helper'

class MappingRelationsControllerTest < ActionController::TestCase
  setup do
    @mapping_relation = mapping_relations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mapping_relations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mapping_relation" do
    assert_difference('MappingRelation.count') do
      post :create, mapping_relation: { dadaji: @mapping_relation.dadaji, dadiji: @mapping_relation.dadiji, relation_id: @mapping_relation.relation_id }
    end

    assert_redirected_to mapping_relation_path(assigns(:mapping_relation))
  end

  test "should show mapping_relation" do
    get :show, id: @mapping_relation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mapping_relation
    assert_response :success
  end

  test "should update mapping_relation" do
    put :update, id: @mapping_relation, mapping_relation: { dadaji: @mapping_relation.dadaji, dadiji: @mapping_relation.dadiji, relation_id: @mapping_relation.relation_id }
    assert_redirected_to mapping_relation_path(assigns(:mapping_relation))
  end

  test "should destroy mapping_relation" do
    assert_difference('MappingRelation.count', -1) do
      delete :destroy, id: @mapping_relation
    end

    assert_redirected_to mapping_relations_path
  end
end
