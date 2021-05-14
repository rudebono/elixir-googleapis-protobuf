defmodule Google.Ads.Googleads.V5.Common.AppFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link_text: Google.Protobuf.StringValue.t() | nil,
          app_id: Google.Protobuf.StringValue.t() | nil,
          app_store: Google.Ads.Googleads.V5.Enums.AppStoreEnum.AppStore.t(),
          final_urls: [Google.Protobuf.StringValue.t()],
          final_mobile_urls: [Google.Protobuf.StringValue.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V5.Common.CustomParameter.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :link_text,
    :app_id,
    :app_store,
    :final_urls,
    :final_mobile_urls,
    :tracking_url_template,
    :url_custom_parameters,
    :final_url_suffix
  ]

  field :link_text, 1, type: Google.Protobuf.StringValue
  field :app_id, 2, type: Google.Protobuf.StringValue
  field :app_store, 3, type: Google.Ads.Googleads.V5.Enums.AppStoreEnum.AppStore, enum: true
  field :final_urls, 4, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 5, repeated: true, type: Google.Protobuf.StringValue
  field :tracking_url_template, 6, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V5.Common.CustomParameter

  field :final_url_suffix, 8, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.CallFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phone_number: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          call_tracking_enabled: Google.Protobuf.BoolValue.t() | nil,
          call_conversion_action: Google.Protobuf.StringValue.t() | nil,
          call_conversion_tracking_disabled: Google.Protobuf.BoolValue.t() | nil,
          call_conversion_reporting_state:
            Google.Ads.Googleads.V5.Enums.CallConversionReportingStateEnum.CallConversionReportingState.t()
        }

  defstruct [
    :phone_number,
    :country_code,
    :call_tracking_enabled,
    :call_conversion_action,
    :call_conversion_tracking_disabled,
    :call_conversion_reporting_state
  ]

  field :phone_number, 1, type: Google.Protobuf.StringValue
  field :country_code, 2, type: Google.Protobuf.StringValue
  field :call_tracking_enabled, 3, type: Google.Protobuf.BoolValue
  field :call_conversion_action, 4, type: Google.Protobuf.StringValue
  field :call_conversion_tracking_disabled, 5, type: Google.Protobuf.BoolValue

  field :call_conversion_reporting_state, 6,
    type:
      Google.Ads.Googleads.V5.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    enum: true
end

defmodule Google.Ads.Googleads.V5.Common.CalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          callout_text: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:callout_text]

  field :callout_text, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.LocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: Google.Protobuf.StringValue.t() | nil,
          address_line_1: Google.Protobuf.StringValue.t() | nil,
          address_line_2: Google.Protobuf.StringValue.t() | nil,
          city: Google.Protobuf.StringValue.t() | nil,
          province: Google.Protobuf.StringValue.t() | nil,
          postal_code: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          phone_number: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :business_name,
    :address_line_1,
    :address_line_2,
    :city,
    :province,
    :postal_code,
    :country_code,
    :phone_number
  ]

  field :business_name, 1, type: Google.Protobuf.StringValue
  field :address_line_1, 2, type: Google.Protobuf.StringValue
  field :address_line_2, 3, type: Google.Protobuf.StringValue
  field :city, 4, type: Google.Protobuf.StringValue
  field :province, 5, type: Google.Protobuf.StringValue
  field :postal_code, 6, type: Google.Protobuf.StringValue
  field :country_code, 7, type: Google.Protobuf.StringValue
  field :phone_number, 8, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.AffiliateLocationFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: Google.Protobuf.StringValue.t() | nil,
          address_line_1: Google.Protobuf.StringValue.t() | nil,
          address_line_2: Google.Protobuf.StringValue.t() | nil,
          city: Google.Protobuf.StringValue.t() | nil,
          province: Google.Protobuf.StringValue.t() | nil,
          postal_code: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          phone_number: Google.Protobuf.StringValue.t() | nil,
          chain_id: Google.Protobuf.Int64Value.t() | nil,
          chain_name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :business_name,
    :address_line_1,
    :address_line_2,
    :city,
    :province,
    :postal_code,
    :country_code,
    :phone_number,
    :chain_id,
    :chain_name
  ]

  field :business_name, 1, type: Google.Protobuf.StringValue
  field :address_line_1, 2, type: Google.Protobuf.StringValue
  field :address_line_2, 3, type: Google.Protobuf.StringValue
  field :city, 4, type: Google.Protobuf.StringValue
  field :province, 5, type: Google.Protobuf.StringValue
  field :postal_code, 6, type: Google.Protobuf.StringValue
  field :country_code, 7, type: Google.Protobuf.StringValue
  field :phone_number, 8, type: Google.Protobuf.StringValue
  field :chain_id, 9, type: Google.Protobuf.Int64Value
  field :chain_name, 10, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.TextMessageFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          business_name: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil,
          phone_number: Google.Protobuf.StringValue.t() | nil,
          text: Google.Protobuf.StringValue.t() | nil,
          extension_text: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:business_name, :country_code, :phone_number, :text, :extension_text]

  field :business_name, 1, type: Google.Protobuf.StringValue
  field :country_code, 2, type: Google.Protobuf.StringValue
  field :phone_number, 3, type: Google.Protobuf.StringValue
  field :text, 4, type: Google.Protobuf.StringValue
  field :extension_text, 5, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.PriceFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Googleads.V5.Enums.PriceExtensionTypeEnum.PriceExtensionType.t(),
          price_qualifier:
            Google.Ads.Googleads.V5.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier.t(),
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil,
          price_offerings: [Google.Ads.Googleads.V5.Common.PriceOffer.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :type,
    :price_qualifier,
    :tracking_url_template,
    :language_code,
    :price_offerings,
    :final_url_suffix
  ]

  field :type, 1,
    type: Google.Ads.Googleads.V5.Enums.PriceExtensionTypeEnum.PriceExtensionType,
    enum: true

  field :price_qualifier, 2,
    type:
      Google.Ads.Googleads.V5.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier,
    enum: true

  field :tracking_url_template, 3, type: Google.Protobuf.StringValue
  field :language_code, 4, type: Google.Protobuf.StringValue
  field :price_offerings, 5, repeated: true, type: Google.Ads.Googleads.V5.Common.PriceOffer
  field :final_url_suffix, 6, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.PriceOffer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          price: Google.Ads.Googleads.V5.Common.Money.t() | nil,
          unit:
            Google.Ads.Googleads.V5.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit.t(),
          final_urls: [Google.Protobuf.StringValue.t()],
          final_mobile_urls: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:header, :description, :price, :unit, :final_urls, :final_mobile_urls]

  field :header, 1, type: Google.Protobuf.StringValue
  field :description, 2, type: Google.Protobuf.StringValue
  field :price, 3, type: Google.Ads.Googleads.V5.Common.Money

  field :unit, 4,
    type: Google.Ads.Googleads.V5.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit,
    enum: true

  field :final_urls, 5, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 6, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.PromotionFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          discount_type: {atom, any},
          promotion_trigger: {atom, any},
          promotion_target: Google.Protobuf.StringValue.t() | nil,
          discount_modifier:
            Google.Ads.Googleads.V5.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier.t(),
          promotion_start_date: Google.Protobuf.StringValue.t() | nil,
          promotion_end_date: Google.Protobuf.StringValue.t() | nil,
          occasion:
            Google.Ads.Googleads.V5.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion.t(),
          final_urls: [Google.Protobuf.StringValue.t()],
          final_mobile_urls: [Google.Protobuf.StringValue.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V5.Common.CustomParameter.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :discount_type,
    :promotion_trigger,
    :promotion_target,
    :discount_modifier,
    :promotion_start_date,
    :promotion_end_date,
    :occasion,
    :final_urls,
    :final_mobile_urls,
    :tracking_url_template,
    :url_custom_parameters,
    :final_url_suffix,
    :language_code
  ]

  oneof :discount_type, 0
  oneof :promotion_trigger, 1
  field :promotion_target, 1, type: Google.Protobuf.StringValue

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V5.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    enum: true

  field :promotion_start_date, 7, type: Google.Protobuf.StringValue
  field :promotion_end_date, 8, type: Google.Protobuf.StringValue

  field :occasion, 9,
    type: Google.Ads.Googleads.V5.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :final_urls, 10, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 11, repeated: true, type: Google.Protobuf.StringValue
  field :tracking_url_template, 12, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 13,
    repeated: true,
    type: Google.Ads.Googleads.V5.Common.CustomParameter

  field :final_url_suffix, 14, type: Google.Protobuf.StringValue
  field :language_code, 15, type: Google.Protobuf.StringValue
  field :percent_off, 3, type: Google.Protobuf.Int64Value, oneof: 0
  field :money_amount_off, 4, type: Google.Ads.Googleads.V5.Common.Money, oneof: 0
  field :promotion_code, 5, type: Google.Protobuf.StringValue, oneof: 1
  field :orders_over_amount, 6, type: Google.Ads.Googleads.V5.Common.Money, oneof: 1
end

defmodule Google.Ads.Googleads.V5.Common.StructuredSnippetFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          header: Google.Protobuf.StringValue.t() | nil,
          values: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:header, :values]

  field :header, 1, type: Google.Protobuf.StringValue
  field :values, 2, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.SitelinkFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          link_text: Google.Protobuf.StringValue.t() | nil,
          line1: Google.Protobuf.StringValue.t() | nil,
          line2: Google.Protobuf.StringValue.t() | nil,
          final_urls: [Google.Protobuf.StringValue.t()],
          final_mobile_urls: [Google.Protobuf.StringValue.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          url_custom_parameters: [Google.Ads.Googleads.V5.Common.CustomParameter.t()],
          final_url_suffix: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :link_text,
    :line1,
    :line2,
    :final_urls,
    :final_mobile_urls,
    :tracking_url_template,
    :url_custom_parameters,
    :final_url_suffix
  ]

  field :link_text, 1, type: Google.Protobuf.StringValue
  field :line1, 2, type: Google.Protobuf.StringValue
  field :line2, 3, type: Google.Protobuf.StringValue
  field :final_urls, 4, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 5, repeated: true, type: Google.Protobuf.StringValue
  field :tracking_url_template, 6, type: Google.Protobuf.StringValue

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V5.Common.CustomParameter

  field :final_url_suffix, 8, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Common.HotelCalloutFeedItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:text, :language_code]

  field :text, 1, type: Google.Protobuf.StringValue
  field :language_code, 2, type: Google.Protobuf.StringValue
end
