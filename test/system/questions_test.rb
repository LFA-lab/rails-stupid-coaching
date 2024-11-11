require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Ask the Coach"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
  end

  test "saying I am goind to work yields a positive response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end

  test "asking a question yields a silly response from the coach" do
    visit ask_url
    fill_in "question", with: "Can I have a raise?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
end
