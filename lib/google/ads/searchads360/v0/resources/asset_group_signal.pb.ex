defmodule Google.Ads.Searchads360.V0.Resources.AssetGroupSignal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :signal, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false

  field :audience, 4,
    type: Google.Ads.Searchads360.V0.Common.AudienceInfo,
    oneof: 0,
    deprecated: false
end