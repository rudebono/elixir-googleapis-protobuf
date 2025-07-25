defmodule Google.Shopping.Merchant.Conversions.V1beta.ConversionSource.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :ARCHIVED, 2
  field :PENDING, 3
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.ConversionSource.Controller do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTROLLER_UNSPECIFIED, 0
  field :MERCHANT, 1
  field :YOUTUBE_AFFILIATES, 2
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.AttributionSettings.AttributionModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ATTRIBUTION_MODEL_UNSPECIFIED, 0
  field :CROSS_CHANNEL_LAST_CLICK, 1
  field :ADS_PREFERRED_LAST_CLICK, 2
  field :CROSS_CHANNEL_DATA_DRIVEN, 5
  field :CROSS_CHANNEL_FIRST_CLICK, 6
  field :CROSS_CHANNEL_LINEAR, 7
  field :CROSS_CHANNEL_POSITION_BASED, 8
  field :CROSS_CHANNEL_TIME_DECAY, 9
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.ConversionSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source_data, 0

  field :google_analytics_link, 3,
    type: Google.Shopping.Merchant.Conversions.V1beta.GoogleAnalyticsLink,
    json_name: "googleAnalyticsLink",
    oneof: 0,
    deprecated: false

  field :merchant_center_destination, 4,
    type: Google.Shopping.Merchant.Conversions.V1beta.MerchantCenterDestination,
    json_name: "merchantCenterDestination",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :state, 5,
    type: Google.Shopping.Merchant.Conversions.V1beta.ConversionSource.State,
    enum: true,
    deprecated: false

  field :expire_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :controller, 7,
    type: Google.Shopping.Merchant.Conversions.V1beta.ConversionSource.Controller,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.AttributionSettings.ConversionType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :report, 2, type: :bool, deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.AttributionSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attribution_lookback_window_days, 1,
    type: :int32,
    json_name: "attributionLookbackWindowDays",
    deprecated: false

  field :attribution_model, 2,
    type: Google.Shopping.Merchant.Conversions.V1beta.AttributionSettings.AttributionModel,
    json_name: "attributionModel",
    enum: true,
    deprecated: false

  field :conversion_type, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Conversions.V1beta.AttributionSettings.ConversionType,
    json_name: "conversionType",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.GoogleAnalyticsLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :property_id, 1, type: :int64, json_name: "propertyId", deprecated: false

  field :attribution_settings, 2,
    type: Google.Shopping.Merchant.Conversions.V1beta.AttributionSettings,
    json_name: "attributionSettings",
    deprecated: false

  field :property, 3, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.MerchantCenterDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination, 1, type: :string, deprecated: false

  field :attribution_settings, 2,
    type: Google.Shopping.Merchant.Conversions.V1beta.AttributionSettings,
    json_name: "attributionSettings",
    deprecated: false

  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :currency_code, 4, type: :string, json_name: "currencyCode", deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.CreateConversionSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversion_source, 2,
    type: Google.Shopping.Merchant.Conversions.V1beta.ConversionSource,
    json_name: "conversionSource",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.UpdateConversionSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :conversion_source, 1,
    type: Google.Shopping.Merchant.Conversions.V1beta.ConversionSource,
    json_name: "conversionSource",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.DeleteConversionSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.UndeleteConversionSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.GetConversionSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.ListConversionSourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :show_deleted, 4, type: :bool, json_name: "showDeleted", deprecated: false
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.ListConversionSourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :conversion_sources, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Conversions.V1beta.ConversionSource,
    json_name: "conversionSources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.ConversionSourcesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.conversions.v1beta.ConversionSourcesService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateConversionSource,
      Google.Shopping.Merchant.Conversions.V1beta.CreateConversionSourceRequest,
      Google.Shopping.Merchant.Conversions.V1beta.ConversionSource

  rpc :UpdateConversionSource,
      Google.Shopping.Merchant.Conversions.V1beta.UpdateConversionSourceRequest,
      Google.Shopping.Merchant.Conversions.V1beta.ConversionSource

  rpc :DeleteConversionSource,
      Google.Shopping.Merchant.Conversions.V1beta.DeleteConversionSourceRequest,
      Google.Protobuf.Empty

  rpc :UndeleteConversionSource,
      Google.Shopping.Merchant.Conversions.V1beta.UndeleteConversionSourceRequest,
      Google.Shopping.Merchant.Conversions.V1beta.ConversionSource

  rpc :GetConversionSource,
      Google.Shopping.Merchant.Conversions.V1beta.GetConversionSourceRequest,
      Google.Shopping.Merchant.Conversions.V1beta.ConversionSource

  rpc :ListConversionSources,
      Google.Shopping.Merchant.Conversions.V1beta.ListConversionSourcesRequest,
      Google.Shopping.Merchant.Conversions.V1beta.ListConversionSourcesResponse
end

defmodule Google.Shopping.Merchant.Conversions.V1beta.ConversionSourcesService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Conversions.V1beta.ConversionSourcesService.Service
end
