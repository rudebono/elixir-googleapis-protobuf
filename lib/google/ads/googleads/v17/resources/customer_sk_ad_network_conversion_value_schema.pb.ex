defmodule Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.FineGrainedConversionValueMappings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :fine_grained_conversion_value, 1,
    type: :int32,
    json_name: "fineGrainedConversionValue",
    deprecated: false

  field :conversion_value_mapping, 2,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.ConversionValueMapping,
    json_name: "conversionValueMapping",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.PostbackMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :lock_window_trigger, 0

  field :postback_sequence_index, 1,
    type: :int32,
    json_name: "postbackSequenceIndex",
    deprecated: false

  field :coarse_grained_conversion_value_mappings, 2,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.CoarseGrainedConversionValueMappings,
    json_name: "coarseGrainedConversionValueMappings",
    deprecated: false

  field :lock_window_coarse_conversion_value, 3,
    type:
      Google.Ads.Googleads.V17.Enums.SkAdNetworkCoarseConversionValueEnum.SkAdNetworkCoarseConversionValue,
    json_name: "lockWindowCoarseConversionValue",
    enum: true,
    oneof: 0,
    deprecated: false

  field :lock_window_fine_conversion_value, 4,
    type: :int32,
    json_name: "lockWindowFineConversionValue",
    oneof: 0,
    deprecated: false

  field :lock_window_event, 5,
    type: :string,
    json_name: "lockWindowEvent",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.CoarseGrainedConversionValueMappings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :low_conversion_value_mapping, 1,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.ConversionValueMapping,
    json_name: "lowConversionValueMapping",
    deprecated: false

  field :medium_conversion_value_mapping, 2,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.ConversionValueMapping,
    json_name: "mediumConversionValueMapping",
    deprecated: false

  field :high_conversion_value_mapping, 3,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.ConversionValueMapping,
    json_name: "highConversionValueMapping",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.ConversionValueMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_time_post_install_hours, 1,
    type: :int64,
    json_name: "minTimePostInstallHours",
    deprecated: false

  field :max_time_post_install_hours, 2,
    type: :int64,
    json_name: "maxTimePostInstallHours",
    deprecated: false

  field :mapped_events, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.Event,
    json_name: "mappedEvents",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.Event.RevenueRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_event_revenue, 3, type: :double, json_name: "minEventRevenue", deprecated: false
  field :max_event_revenue, 4, type: :double, json_name: "maxEventRevenue", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.Event.EventOccurrenceRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_event_count, 1, type: :int64, json_name: "minEventCount", deprecated: false
  field :max_event_count, 2, type: :int64, json_name: "maxEventCount", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :revenue_rate, 0

  oneof :event_rate, 1

  field :mapped_event_name, 1, type: :string, json_name: "mappedEventName", deprecated: false
  field :currency_code, 2, type: :string, json_name: "currencyCode", deprecated: false

  field :event_revenue_range, 3,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.Event.RevenueRange,
    json_name: "eventRevenueRange",
    oneof: 0,
    deprecated: false

  field :event_revenue_value, 4,
    type: :double,
    json_name: "eventRevenueValue",
    oneof: 0,
    deprecated: false

  field :event_occurrence_range, 5,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.Event.EventOccurrenceRange,
    json_name: "eventOccurrenceRange",
    oneof: 1,
    deprecated: false

  field :event_counter, 6, type: :int64, json_name: "eventCounter", oneof: 1, deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId", deprecated: false

  field :measurement_window_hours, 2,
    type: :int32,
    json_name: "measurementWindowHours",
    deprecated: false

  field :fine_grained_conversion_value_mappings, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.FineGrainedConversionValueMappings,
    json_name: "fineGrainedConversionValueMappings",
    deprecated: false

  field :postback_mappings, 4,
    repeated: true,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema.PostbackMapping,
    json_name: "postbackMappings",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :schema, 2,
    type:
      Google.Ads.Googleads.V17.Resources.CustomerSkAdNetworkConversionValueSchema.SkAdNetworkConversionValueSchema,
    deprecated: false
end