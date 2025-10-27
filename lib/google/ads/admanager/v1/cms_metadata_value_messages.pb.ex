defmodule Google.Ads.Admanager.V1.CmsMetadataValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
  field :key, 5, type: :string, deprecated: false

  field :status, 6,
    type: Google.Ads.Admanager.V1.CmsMetadataValueStatusEnum.CmsMetadataValueStatus,
    enum: true,
    deprecated: false
end
