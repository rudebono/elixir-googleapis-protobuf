defmodule Google.Ads.Googleads.V19.Common.CallFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :phone_number, 7, proto3_optional: true, type: :string, json_name: "phoneNumber"
  field :country_code, 8, proto3_optional: true, type: :string, json_name: "countryCode"

  field :call_tracking_enabled, 9,
    proto3_optional: true,
    type: :bool,
    json_name: "callTrackingEnabled"

  field :call_conversion_action, 10,
    proto3_optional: true,
    type: :string,
    json_name: "callConversionAction"

  field :call_conversion_tracking_disabled, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "callConversionTrackingDisabled"

  field :call_conversion_reporting_state, 6,
    type:
      Google.Ads.Googleads.V19.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    json_name: "callConversionReportingState",
    enum: true
end

defmodule Google.Ads.Googleads.V19.Common.CalloutFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :callout_text, 2, proto3_optional: true, type: :string, json_name: "calloutText"
end

defmodule Google.Ads.Googleads.V19.Common.SitelinkFeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :link_text, 9, proto3_optional: true, type: :string, json_name: "linkText"
  field :line1, 10, proto3_optional: true, type: :string
  field :line2, 11, proto3_optional: true, type: :string
  field :final_urls, 12, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 13, repeated: true, type: :string, json_name: "finalMobileUrls"

  field :tracking_url_template, 14,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :url_custom_parameters, 7,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.CustomParameter,
    json_name: "urlCustomParameters"

  field :final_url_suffix, 15, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"
end
