defmodule Google.Ads.Admanager.V1.AdUnit.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
  field :ARCHIVED, 3
end

defmodule Google.Ads.Admanager.V1.TargetWindowEnum.TargetWindow do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TARGET_WINDOW_UNSPECIFIED, 0
  field :TOP, 1
  field :BLANK, 2
end

defmodule Google.Ads.Admanager.V1.SmartSizeModeEnum.SmartSizeMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SMART_SIZE_MODE_UNSPECIFIED, 0
  field :NONE, 1
  field :SMART_BANNER, 2
  field :DYNAMIC_SIZE, 3
end

defmodule Google.Ads.Admanager.V1.AdUnit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :ad_unit_id, 15, type: :int64, json_name: "adUnitId", deprecated: false
  field :parent_ad_unit, 10, type: :string, json_name: "parentAdUnit", deprecated: false

  field :parent_path, 11,
    repeated: true,
    type: Google.Ads.Admanager.V1.AdUnitParent,
    json_name: "parentPath",
    deprecated: false

  field :display_name, 9, type: :string, json_name: "displayName", deprecated: false
  field :ad_unit_code, 2, type: :string, json_name: "adUnitCode", deprecated: false
  field :status, 13, type: Google.Ads.Admanager.V1.AdUnit.Status, enum: true, deprecated: false

  field :target_window, 12,
    type: Google.Ads.Admanager.V1.TargetWindowEnum.TargetWindow,
    json_name: "targetWindow",
    enum: true,
    deprecated: false

  field :applied_teams, 3,
    repeated: true,
    type: :string,
    json_name: "appliedTeams",
    deprecated: false

  field :teams, 4, repeated: true, type: :string, deprecated: false
  field :description, 5, type: :string, deprecated: false
  field :explicitly_targeted, 6, type: :bool, json_name: "explicitlyTargeted", deprecated: false
  field :has_children, 7, type: :bool, json_name: "hasChildren", deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :ad_unit_sizes, 14,
    repeated: true,
    type: Google.Ads.Admanager.V1.AdUnitSize,
    json_name: "adUnitSizes",
    deprecated: false

  field :external_set_top_box_channel_id, 17,
    type: :string,
    json_name: "externalSetTopBoxChannelId",
    deprecated: false

  field :refresh_delay, 19,
    type: Google.Protobuf.Duration,
    json_name: "refreshDelay",
    deprecated: false

  field :ctv_application_id, 20, type: :int64, json_name: "ctvApplicationId", deprecated: false

  field :applied_labels, 21,
    repeated: true,
    type: Google.Ads.Admanager.V1.AppliedLabel,
    json_name: "appliedLabels",
    deprecated: false

  field :effective_applied_labels, 22,
    repeated: true,
    type: Google.Ads.Admanager.V1.AppliedLabel,
    json_name: "effectiveAppliedLabels",
    deprecated: false

  field :applied_label_frequency_caps, 23,
    repeated: true,
    type: Google.Ads.Admanager.V1.LabelFrequencyCap,
    json_name: "appliedLabelFrequencyCaps",
    deprecated: false

  field :effective_label_frequency_caps, 24,
    repeated: true,
    type: Google.Ads.Admanager.V1.LabelFrequencyCap,
    json_name: "effectiveLabelFrequencyCaps",
    deprecated: false

  field :smart_size_mode, 25,
    type: Google.Ads.Admanager.V1.SmartSizeModeEnum.SmartSizeMode,
    json_name: "smartSizeMode",
    enum: true,
    deprecated: false

  field :applied_adsense_enabled, 26,
    type: Google.Ads.Admanager.V1.AppliedAdsenseEnabledEnum.AppliedAdsenseEnabled,
    json_name: "appliedAdsenseEnabled",
    enum: true,
    deprecated: false

  field :effective_adsense_enabled, 27,
    type: :bool,
    json_name: "effectiveAdsenseEnabled",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.AdUnitParent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent_ad_unit, 1, type: :string, json_name: "parentAdUnit", deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :ad_unit_code, 3, type: :string, json_name: "adUnitCode", deprecated: false
end

defmodule Google.Ads.Admanager.V1.TargetWindowEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.LabelFrequencyCap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :label, 1, type: :string
  field :frequency_cap, 2, type: Google.Ads.Admanager.V1.FrequencyCap, json_name: "frequencyCap"
end

defmodule Google.Ads.Admanager.V1.SmartSizeModeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.GetAdUnitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdUnitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdUnitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ad_units, 1, repeated: true, type: Google.Ads.Admanager.V1.AdUnit, json_name: "adUnits"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.AdUnitService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.AdUnitService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetAdUnit, Google.Ads.Admanager.V1.GetAdUnitRequest, Google.Ads.Admanager.V1.AdUnit

  rpc :ListAdUnits,
      Google.Ads.Admanager.V1.ListAdUnitsRequest,
      Google.Ads.Admanager.V1.ListAdUnitsResponse
end

defmodule Google.Ads.Admanager.V1.AdUnitService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.AdUnitService.Service
end