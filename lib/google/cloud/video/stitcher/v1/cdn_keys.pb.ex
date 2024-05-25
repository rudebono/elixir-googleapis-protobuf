defmodule Google.Cloud.Video.Stitcher.V1.CdnKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :cdn_key_config, 0

  field :google_cdn_key, 5,
    type: Google.Cloud.Video.Stitcher.V1.GoogleCdnKey,
    json_name: "googleCdnKey",
    oneof: 0

  field :akamai_cdn_key, 6,
    type: Google.Cloud.Video.Stitcher.V1.AkamaiCdnKey,
    json_name: "akamaiCdnKey",
    oneof: 0

  field :media_cdn_key, 8,
    type: Google.Cloud.Video.Stitcher.V1.MediaCdnKey,
    json_name: "mediaCdnKey",
    oneof: 0

  field :name, 1, type: :string
  field :hostname, 4, type: :string
end

defmodule Google.Cloud.Video.Stitcher.V1.GoogleCdnKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_key, 1, type: :bytes, json_name: "privateKey", deprecated: false
  field :key_name, 2, type: :string, json_name: "keyName"
end

defmodule Google.Cloud.Video.Stitcher.V1.AkamaiCdnKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :token_key, 1, type: :bytes, json_name: "tokenKey", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.MediaCdnKey.TokenConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :query_parameter, 1, type: :string, json_name: "queryParameter", deprecated: false
end

defmodule Google.Cloud.Video.Stitcher.V1.MediaCdnKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_key, 1, type: :bytes, json_name: "privateKey", deprecated: false
  field :key_name, 2, type: :string, json_name: "keyName"

  field :token_config, 3,
    type: Google.Cloud.Video.Stitcher.V1.MediaCdnKey.TokenConfig,
    json_name: "tokenConfig",
    deprecated: false
end