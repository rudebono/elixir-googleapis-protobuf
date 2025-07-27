defmodule Google.Cloud.Eventarc.V1.GoogleApiSource.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.V1.GoogleApiSource.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.V1.GoogleApiSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :etag, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.GoogleApiSource.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 7,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.GoogleApiSource.AnnotationsEntry,
    map: true,
    deprecated: false

  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false
  field :destination, 9, type: :string, deprecated: false
  field :crypto_key_name, 10, type: :string, json_name: "cryptoKeyName", deprecated: false

  field :logging_config, 11,
    type: Google.Cloud.Eventarc.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end
