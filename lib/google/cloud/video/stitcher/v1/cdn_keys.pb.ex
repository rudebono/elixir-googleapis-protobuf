defmodule Google.Cloud.Video.Stitcher.V1.CdnKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cdn_key_config:
            {:google_cdn_key, Google.Cloud.Video.Stitcher.V1.GoogleCdnKey.t() | nil}
            | {:akamai_cdn_key, Google.Cloud.Video.Stitcher.V1.AkamaiCdnKey.t() | nil},
          name: String.t(),
          hostname: String.t()
        }

  defstruct cdn_key_config: nil,
            name: "",
            hostname: ""

  oneof :cdn_key_config, 0

  field :google_cdn_key, 5,
    type: Google.Cloud.Video.Stitcher.V1.GoogleCdnKey,
    json_name: "googleCdnKey",
    oneof: 0

  field :akamai_cdn_key, 6,
    type: Google.Cloud.Video.Stitcher.V1.AkamaiCdnKey,
    json_name: "akamaiCdnKey",
    oneof: 0

  field :name, 1, type: :string
  field :hostname, 4, type: :string
end
defmodule Google.Cloud.Video.Stitcher.V1.GoogleCdnKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          private_key: binary,
          key_name: String.t()
        }

  defstruct private_key: "",
            key_name: ""

  field :private_key, 1, type: :bytes, json_name: "privateKey", deprecated: false
  field :key_name, 2, type: :string, json_name: "keyName"
end
defmodule Google.Cloud.Video.Stitcher.V1.AkamaiCdnKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          token_key: binary
        }

  defstruct token_key: ""

  field :token_key, 1, type: :bytes, json_name: "tokenKey", deprecated: false
end
