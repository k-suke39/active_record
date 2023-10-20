# frozen_string_literal: true

require 'test_helper'

module Admin
  class PracticesControllerTest < ActionDispatch::IntegrationTest
    test 'should get index' do
      get admin_practices_index_url
      assert_response :success
    end

    test 'should get show' do
      get admin_practices_show_url
      assert_response :success
    end

    test 'should get new' do
      get admin_practices_new_url
      assert_response :success
    end

    test 'should get create' do
      get admin_practices_create_url
      assert_response :success
    end

    test 'should get edit' do
      get admin_practices_edit_url
      assert_response :success
    end

    test 'should get update' do
      get admin_practices_update_url
      assert_response :success
    end

    test 'should get destroy' do
      get admin_practices_destroy_url
      assert_response :success
    end
  end
end
