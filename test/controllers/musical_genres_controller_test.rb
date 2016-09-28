require 'test_helper'

class MusicalGenresControllerTest < ActionController::TestCase
  setup do
    @musical_genre = musical_genres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musical_genres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musical_genre" do
    assert_difference('MusicalGenre.count') do
      post :create, musical_genre: { codgenmus: @musical_genre.codgenmus, descripcion: @musical_genre.descripcion }
    end

    assert_redirected_to musical_genre_path(assigns(:musical_genre))
  end

  test "should show musical_genre" do
    get :show, id: @musical_genre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @musical_genre
    assert_response :success
  end

  test "should update musical_genre" do
    patch :update, id: @musical_genre, musical_genre: { codgenmus: @musical_genre.codgenmus, descripcion: @musical_genre.descripcion }
    assert_redirected_to musical_genre_path(assigns(:musical_genre))
  end

  test "should destroy musical_genre" do
    assert_difference('MusicalGenre.count', -1) do
      delete :destroy, id: @musical_genre
    end

    assert_redirected_to musical_genres_path
  end
end
