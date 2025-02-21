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
require_relative "terminal-shop/version"
require_relative "terminal-shop/util"
require_relative "terminal-shop/extern"
require_relative "terminal-shop/base_model"
require_relative "terminal-shop/base_page"
require_relative "terminal-shop/request_options"
require_relative "terminal-shop/base_client"
require_relative "terminal-shop/pooled_net_requester"
require_relative "terminal-shop/errors"
require_relative "terminal-shop/models/product"
require_relative "terminal-shop/models/product_variant"
require_relative "terminal-shop/models/product_list_response"
require_relative "terminal-shop/models/profile"
require_relative "terminal-shop/models/profile_update_response"
require_relative "terminal-shop/models/profile_me_response"
require_relative "terminal-shop/models/address"
require_relative "terminal-shop/models/address_create_response"
require_relative "terminal-shop/models/address_list_response"
require_relative "terminal-shop/models/address_delete_response"
require_relative "terminal-shop/models/card"
require_relative "terminal-shop/models/card_create_response"
require_relative "terminal-shop/models/card_list_response"
require_relative "terminal-shop/models/card_delete_response"
require_relative "terminal-shop/models/card_collect_response"
require_relative "terminal-shop/models/cart"
require_relative "terminal-shop/models/cart_convert_response"
require_relative "terminal-shop/models/cart_get_response"
require_relative "terminal-shop/models/cart_set_address_response"
require_relative "terminal-shop/models/cart_set_card_response"
require_relative "terminal-shop/models/cart_set_item_response"
require_relative "terminal-shop/models/order"
require_relative "terminal-shop/models/order_list_response"
require_relative "terminal-shop/models/order_get_response"
require_relative "terminal-shop/models/subscription"
require_relative "terminal-shop/models/subscription_create_response"
require_relative "terminal-shop/models/subscription_list_response"
require_relative "terminal-shop/models/subscription_delete_response"
require_relative "terminal-shop/models/token"
require_relative "terminal-shop/models/token_create_response"
require_relative "terminal-shop/models/token_list_response"
require_relative "terminal-shop/models/token_delete_response"
require_relative "terminal-shop/models/token_get_response"
require_relative "terminal-shop/models/app"
require_relative "terminal-shop/models/app_create_response"
require_relative "terminal-shop/models/app_list_response"
require_relative "terminal-shop/models/app_delete_response"
require_relative "terminal-shop/models/app_get_response"
require_relative "terminal-shop/models/email_create_response"
require_relative "terminal-shop/models/view_init_response"
require_relative "terminal-shop/models/product_list_params"
require_relative "terminal-shop/models/profile_update_params"
require_relative "terminal-shop/models/profile_me_params"
require_relative "terminal-shop/models/address_create_params"
require_relative "terminal-shop/models/address_list_params"
require_relative "terminal-shop/models/address_delete_params"
require_relative "terminal-shop/models/card_create_params"
require_relative "terminal-shop/models/card_list_params"
require_relative "terminal-shop/models/card_delete_params"
require_relative "terminal-shop/models/card_collect_params"
require_relative "terminal-shop/models/cart_convert_params"
require_relative "terminal-shop/models/cart_get_params"
require_relative "terminal-shop/models/cart_set_address_params"
require_relative "terminal-shop/models/cart_set_card_params"
require_relative "terminal-shop/models/cart_set_item_params"
require_relative "terminal-shop/models/order_list_params"
require_relative "terminal-shop/models/order_get_params"
require_relative "terminal-shop/models/subscription_create_params"
require_relative "terminal-shop/models/subscription_list_params"
require_relative "terminal-shop/models/subscription_delete_params"
require_relative "terminal-shop/models/token_create_params"
require_relative "terminal-shop/models/token_list_params"
require_relative "terminal-shop/models/token_delete_params"
require_relative "terminal-shop/models/token_get_params"
require_relative "terminal-shop/models/app_create_params"
require_relative "terminal-shop/models/app_list_params"
require_relative "terminal-shop/models/app_delete_params"
require_relative "terminal-shop/models/app_get_params"
require_relative "terminal-shop/models/email_create_params"
require_relative "terminal-shop/models/view_init_params"
require_relative "terminal-shop/client"
require_relative "terminal-shop/resources/product"
require_relative "terminal-shop/resources/profile"
require_relative "terminal-shop/resources/address"
require_relative "terminal-shop/resources/card"
require_relative "terminal-shop/resources/cart"
require_relative "terminal-shop/resources/order"
require_relative "terminal-shop/resources/subscription"
require_relative "terminal-shop/resources/token"
require_relative "terminal-shop/resources/app"
require_relative "terminal-shop/resources/email"
require_relative "terminal-shop/resources/view"
