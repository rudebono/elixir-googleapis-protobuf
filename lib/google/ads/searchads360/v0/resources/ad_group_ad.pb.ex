defmodule Google.Ads.Searchads360.V0.Resources.AdGroupAd do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :status, 3,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupAdStatusEnum.AdGroupAdStatus,
    enum: true

  field :ad, 5, type: Google.Ads.Searchads360.V0.Resources.Ad, deprecated: false
  field :creation_time, 14, type: :string, json_name: "creationTime", deprecated: false
  field :labels, 10, repeated: true, type: :string, deprecated: false
  field :engine_id, 11, type: :string, json_name: "engineId", deprecated: false

  field :engine_status, 15,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupAdEngineStatusEnum.AdGroupAdEngineStatus,
    json_name: "engineStatus",
    enum: true,
    deprecated: false

  field :last_modified_time, 12, type: :string, json_name: "lastModifiedTime", deprecated: false
end