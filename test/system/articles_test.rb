require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "articles"
  end

  test "creating a article" do
    visit articles_url
    click_on "New article"

    fill_in "Description", with: @article.description
    fill_in "Title", with: @article.title
    click_on "Create article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "updating a article" do
    visit articles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @article.description
    fill_in "Title", with: @article.title
    click_on "Update article"

    assert_text "article was successfully updated"
    click_on "Back"
  end

  test "destroying a article" do
    visit articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "article was successfully destroyed"
  end
end
