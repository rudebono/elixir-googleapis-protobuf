defmodule Google.Ads.Searchads360.V0.Resources.Ad do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 37, type: :string, json_name: "resourceName", deprecated: false
  field :id, 40, proto3_optional: true, type: :int64, deprecated: false
  field :final_urls, 41, repeated: true, type: :string, json_name: "finalUrls"
  field :display_url, 45, proto3_optional: true, type: :string, json_name: "displayUrl"

  field :type, 5,
    type: Google.Ads.Searchads360.V0.Enums.AdTypeEnum.AdType,
    enum: true,
    deprecated: false

  field :name, 47, proto3_optional: true, type: :string, deprecated: false
end