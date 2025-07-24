defmodule Google.Ads.Searchads360.V0.Resources.AdGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 34, proto3_optional: true, type: :int64, deprecated: false
  field :name, 35, proto3_optional: true, type: :string

  field :status, 5,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupStatusEnum.AdGroupStatus,
    enum: true

  field :type, 12,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupTypeEnum.AdGroupType,
    enum: true,
    deprecated: false

  field :ad_rotation_mode, 22,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupAdRotationModeEnum.AdGroupAdRotationMode,
    json_name: "adRotationMode",
    enum: true

  field :cpc_bid_micros, 39, proto3_optional: true, type: :int64, json_name: "cpcBidMicros"
  field :creation_time, 60, type: :string, json_name: "creationTime", deprecated: false

  field :engine_status, 61,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupEngineStatusEnum.AdGroupEngineStatus,
    json_name: "engineStatus",
    enum: true,
    deprecated: false

  field :targeting_setting, 25,
    type: Google.Ads.Searchads360.V0.Common.TargetingSetting,
    json_name: "targetingSetting"

  field :labels, 49, repeated: true, type: :string, deprecated: false

  field :effective_labels, 66,
    repeated: true,
    type: :string,
    json_name: "effectiveLabels",
    deprecated: false

  field :engine_id, 50, type: :string, json_name: "engineId", deprecated: false
  field :start_date, 51, type: :string, json_name: "startDate", deprecated: false
  field :end_date, 52, type: :string, json_name: "endDate", deprecated: false
  field :language_code, 53, type: :string, json_name: "languageCode", deprecated: false
  field :last_modified_time, 55, type: :string, json_name: "lastModifiedTime", deprecated: false
end
