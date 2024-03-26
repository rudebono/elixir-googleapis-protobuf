defmodule Google.Ads.Admanager.V1.AdUnitSize do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :size, 1, type: Google.Ads.Admanager.V1.Size, deprecated: false

  field :environment_type, 2,
    type: Google.Ads.Admanager.V1.EnvironmentTypeEnum.EnvironmentType,
    json_name: "environmentType",
    enum: true,
    deprecated: false

  field :companions, 3, repeated: true, type: Google.Ads.Admanager.V1.Size
end