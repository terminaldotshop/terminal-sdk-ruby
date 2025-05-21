# frozen_string_literal: true

module TerminalShop
  [TerminalShop::Internal::Type::BaseModel, *TerminalShop::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, TerminalShop::Internal::AnyHash) } }
  end

  TerminalShop::Internal::Util.walk_namespaces(TerminalShop::Models).each do |mod|
    case mod
    in TerminalShop::Internal::Type::Enum | TerminalShop::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, mod) } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, mod) } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, mod) } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, mod) } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  TerminalShop::Internal::Util.walk_namespaces(TerminalShop::Models)
                              .lazy
                              .grep(TerminalShop::Internal::Type::Union)
                              .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AddressAPI = TerminalShop::Models::AddressAPI

  AddressCreateParams = TerminalShop::Models::AddressCreateParams

  AddressDeleteParams = TerminalShop::Models::AddressDeleteParams

  AddressGetParams = TerminalShop::Models::AddressGetParams

  AddressListParams = TerminalShop::Models::AddressListParams

  AppAPI = TerminalShop::Models::AppAPI

  AppCreateParams = TerminalShop::Models::AppCreateParams

  AppDeleteParams = TerminalShop::Models::AppDeleteParams

  AppGetParams = TerminalShop::Models::AppGetParams

  AppListParams = TerminalShop::Models::AppListParams

  CardAPI = TerminalShop::Models::CardAPI

  CardCollectParams = TerminalShop::Models::CardCollectParams

  CardCreateParams = TerminalShop::Models::CardCreateParams

  CardDeleteParams = TerminalShop::Models::CardDeleteParams

  CardGetParams = TerminalShop::Models::CardGetParams

  CardListParams = TerminalShop::Models::CardListParams

  CartAPI = TerminalShop::Models::CartAPI

  CartClearParams = TerminalShop::Models::CartClearParams

  CartConvertParams = TerminalShop::Models::CartConvertParams

  CartGetParams = TerminalShop::Models::CartGetParams

  CartSetAddressParams = TerminalShop::Models::CartSetAddressParams

  CartSetCardParams = TerminalShop::Models::CartSetCardParams

  CartSetItemParams = TerminalShop::Models::CartSetItemParams

  EmailCreateParams = TerminalShop::Models::EmailCreateParams

  OrderAPI = TerminalShop::Models::OrderAPI

  OrderCreateParams = TerminalShop::Models::OrderCreateParams

  OrderGetParams = TerminalShop::Models::OrderGetParams

  OrderListParams = TerminalShop::Models::OrderListParams

  ProductAPI = TerminalShop::Models::ProductAPI

  ProductGetParams = TerminalShop::Models::ProductGetParams

  ProductListParams = TerminalShop::Models::ProductListParams

  ProductVariant = TerminalShop::Models::ProductVariant

  ProfileAPI = TerminalShop::Models::ProfileAPI

  ProfileMeParams = TerminalShop::Models::ProfileMeParams

  ProfileUpdateParams = TerminalShop::Models::ProfileUpdateParams

  Region = TerminalShop::Models::Region

  SubscriptionAPI = TerminalShop::Models::SubscriptionAPI

  SubscriptionCreateParams = TerminalShop::Models::SubscriptionCreateParams

  SubscriptionDeleteParams = TerminalShop::Models::SubscriptionDeleteParams

  SubscriptionGetParams = TerminalShop::Models::SubscriptionGetParams

  SubscriptionListParams = TerminalShop::Models::SubscriptionListParams

  SubscriptionUpdateParams = TerminalShop::Models::SubscriptionUpdateParams

  TokenAPI = TerminalShop::Models::TokenAPI

  TokenCreateParams = TerminalShop::Models::TokenCreateParams

  TokenDeleteParams = TerminalShop::Models::TokenDeleteParams

  TokenGetParams = TerminalShop::Models::TokenGetParams

  TokenListParams = TerminalShop::Models::TokenListParams

  ViewInitParams = TerminalShop::Models::ViewInitParams
end
