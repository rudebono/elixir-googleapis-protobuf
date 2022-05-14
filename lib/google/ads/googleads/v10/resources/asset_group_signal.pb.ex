defmodule Google.Ads.Googleads.V10.Resources.AssetGroupSignal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false
  field :audience, 3, type: Google.Ads.Googleads.V10.Common.AudienceInfo, deprecated: false
end
