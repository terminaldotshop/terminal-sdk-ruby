# frozen_string_literal: true

# Standard libraries.
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "terminal/pooled_net_requester"
require_relative "terminal/version"
require_relative "terminal/util"
require_relative "terminal/extern"
require_relative "terminal/base_model"
require_relative "terminal/base_page"
require_relative "terminal/request_options"
require_relative "terminal/base_client"
require_relative "terminal/errors"
require_relative "terminal/models/product"
require_relative "terminal/models/product_variant"
require_relative "terminal/models/product_list_response"
require_relative "terminal/models/profile"
require_relative "terminal/models/profile_update_response"
require_relative "terminal/models/profile_me_response"
require_relative "terminal/models/address"
require_relative "terminal/models/address_create_response"
require_relative "terminal/models/address_list_response"
require_relative "terminal/models/address_delete_response"
require_relative "terminal/models/card"
require_relative "terminal/models/card_create_response"
require_relative "terminal/models/card_list_response"
require_relative "terminal/models/card_delete_response"
require_relative "terminal/models/card_collect_response"
require_relative "terminal/models/cart"
require_relative "terminal/models/cart_convert_response"
require_relative "terminal/models/cart_get_response"
require_relative "terminal/models/cart_set_address_response"
require_relative "terminal/models/cart_set_card_response"
require_relative "terminal/models/cart_set_item_response"
require_relative "terminal/models/order"
require_relative "terminal/models/order_list_response"
require_relative "terminal/models/order_get_response"
require_relative "terminal/models/subscription"
require_relative "terminal/models/subscription_create_response"
require_relative "terminal/models/subscription_list_response"
require_relative "terminal/models/subscription_delete_response"
require_relative "terminal/models/token"
require_relative "terminal/models/token_create_response"
require_relative "terminal/models/token_list_response"
require_relative "terminal/models/token_delete_response"
require_relative "terminal/models/token_get_response"
require_relative "terminal/models/app"
require_relative "terminal/models/app_create_response"
require_relative "terminal/models/app_list_response"
require_relative "terminal/models/app_delete_response"
require_relative "terminal/models/app_get_response"
require_relative "terminal/models/email_create_response"
require_relative "terminal/models/view_init_response"
require_relative "terminal/models/product_list_params"
require_relative "terminal/models/profile_update_params"
require_relative "terminal/models/profile_me_params"
require_relative "terminal/models/address_create_params"
require_relative "terminal/models/address_list_params"
require_relative "terminal/models/address_delete_params"
require_relative "terminal/models/card_create_params"
require_relative "terminal/models/card_list_params"
require_relative "terminal/models/card_delete_params"
require_relative "terminal/models/card_collect_params"
require_relative "terminal/models/cart_convert_params"
require_relative "terminal/models/cart_get_params"
require_relative "terminal/models/cart_set_address_params"
require_relative "terminal/models/cart_set_card_params"
require_relative "terminal/models/cart_set_item_params"
require_relative "terminal/models/order_list_params"
require_relative "terminal/models/order_get_params"
require_relative "terminal/models/subscription_create_params"
require_relative "terminal/models/subscription_list_params"
require_relative "terminal/models/subscription_delete_params"
require_relative "terminal/models/token_create_params"
require_relative "terminal/models/token_list_params"
require_relative "terminal/models/token_delete_params"
require_relative "terminal/models/token_get_params"
require_relative "terminal/models/app_create_params"
require_relative "terminal/models/app_list_params"
require_relative "terminal/models/app_delete_params"
require_relative "terminal/models/app_get_params"
require_relative "terminal/models/email_create_params"
require_relative "terminal/models/view_init_params"
require_relative "terminal/client"
require_relative "terminal/resources/product"
require_relative "terminal/resources/profile"
require_relative "terminal/resources/address"
require_relative "terminal/resources/card"
require_relative "terminal/resources/cart"
require_relative "terminal/resources/order"
require_relative "terminal/resources/subscription"
require_relative "terminal/resources/token"
require_relative "terminal/resources/app"
require_relative "terminal/resources/email"
require_relative "terminal/resources/view"
