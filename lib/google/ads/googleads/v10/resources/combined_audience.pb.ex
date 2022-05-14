defmodule Google.Ads.Googleads.V10.Resources.CombinedAudience do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V10.Enums.CombinedAudienceStatusEnum.CombinedAudienceStatus,
    enum: true,
    deprecated: false

  field :name, 4, type: :string, deprecated: false
  field :description, 5, type: :string, deprecated: false
end
