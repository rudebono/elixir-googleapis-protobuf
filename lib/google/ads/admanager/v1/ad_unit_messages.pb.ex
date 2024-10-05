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

  field :status, 13,
    type: Google.Ads.Admanager.V1.AdUnitStatusEnum.AdUnitStatus,
    enum: true,
    deprecated: false

  field :applied_target_window, 44,
    type: Google.Ads.Admanager.V1.TargetWindowEnum.TargetWindow,
    json_name: "appliedTargetWindow",
    enum: true,
    deprecated: false

  field :effective_target_window, 45,
    type: Google.Ads.Admanager.V1.TargetWindowEnum.TargetWindow,
    json_name: "effectiveTargetWindow",
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
    proto3_optional: true,
    type: :bool,
    json_name: "appliedAdsenseEnabled",
    deprecated: false

  field :effective_adsense_enabled, 27,
    type: :bool,
    json_name: "effectiveAdsenseEnabled",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.AdUnitSize do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :size, 1, type: Google.Ads.Admanager.V1.Size, deprecated: false

  field :environment_type, 2,
    type: Google.Ads.Admanager.V1.EnvironmentTypeEnum.EnvironmentType,
    json_name: "environmentType",
    enum: true,
    deprecated: false

  field :companions, 3, repeated: true, type: Google.Ads.Admanager.V1.Size
end

defmodule Google.Ads.Admanager.V1.AdUnitParent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent_ad_unit, 1, type: :string, json_name: "parentAdUnit", deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :ad_unit_code, 3, type: :string, json_name: "adUnitCode", deprecated: false
end

defmodule Google.Ads.Admanager.V1.LabelFrequencyCap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :label, 1, type: :string, deprecated: false
  field :frequency_cap, 2, type: Google.Ads.Admanager.V1.FrequencyCap, json_name: "frequencyCap"
end