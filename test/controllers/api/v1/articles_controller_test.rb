require 'test_helper'

class Api::V1::ArticlesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @article = articles(:one)
  end

  test "should show articles #index" do
    get api_v1_articles_path
    assert_response :success
  end

  test "should show article" do
    get api_v1_article_path(@article)
    assert_response :success
  end

  test "should save article" do
    post api_v1_articles_path, params: {article: {title: @article.title, content: @article.content}}
    assert_response :success
  end

  test "should not save article" do
    post api_v1_articles_path, params: {article: {title:"" , content:""}}
    assert_response :unprocessable_entity
  end
  
  test "should updated article" do
    patch api_v1_article_path(@article), params: {article:{title: "Updated", content: "Updated"}}
    @article.reload
    assert_equal "Updated", @article.title
    assert_equal "Updated", @article.content
  end

  test "should not updated article" do
    patch api_v1_article_path(@article), params: {article:{title: "", content: ""}}
    @article.reload
    assert_response :unprocessable_entity
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete api_v1_article_path(@article)
    end
  end

  test "should identify routes" do
    assert_recognizes({controller: "api/v1/articles", action: "index"}, "/api/v1/articles")
    assert_routing "/", controller: "api/v1/articles", action: "index"
    assert_routing "/api/v1/articles/1", controller: "api/v1/articles", action: "show", id:"1"
    assert_routing({path: "/api/v1/articles", method: :post}, {controller: "api/v1/articles", action: "create"})
    assert_routing({path: "/api/v1/articles/1", method: :patch}, {controller: "api/v1/articles", action: "update", id: "1"})
    assert_routing({path: "/api/v1/articles/1", method: :delete}, {controller: "api/v1/articles", action: "destroy", id: "1"})
  end



end
