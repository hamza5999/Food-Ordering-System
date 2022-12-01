# frozen_string_literal: true

require 'test_helper'

module Employees
  class ProfileControllerTest < ActionDispatch::IntegrationTest
    test 'should get show' do
      get employees_profile_show_url
      assert_response :success
    end
  end
end
