defmodule Google.Ads.Searchads360.V0.Resources.CustomerAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset, 2, type: :string, deprecated: false

  field :status, 4,
    type: Google.Ads.Searchads360.V0.Enums.AssetLinkStatusEnum.AssetLinkStatus,
    enum: true
end
