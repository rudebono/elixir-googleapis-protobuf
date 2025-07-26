defmodule Google.Ai.Generativelanguage.V1beta.File.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROCESSING, 1
  field :ACTIVE, 2
  field :FAILED, 10
end

defmodule Google.Ai.Generativelanguage.V1beta.File.Source do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SOURCE_UNSPECIFIED, 0
  field :UPLOADED, 1
  field :GENERATED, 2
end

defmodule Google.Ai.Generativelanguage.V1beta.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :metadata, 0

  field :video_metadata, 12,
    type: Google.Ai.Generativelanguage.V1beta.VideoMetadata,
    json_name: "videoMetadata",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false
  field :size_bytes, 4, type: :int64, json_name: "sizeBytes", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :expiration_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "expirationTime",
    deprecated: false

  field :sha256_hash, 8, type: :bytes, json_name: "sha256Hash", deprecated: false
  field :uri, 9, type: :string, deprecated: false
  field :download_uri, 14, type: :string, json_name: "downloadUri", deprecated: false

  field :state, 10,
    type: Google.Ai.Generativelanguage.V1beta.File.State,
    enum: true,
    deprecated: false

  field :source, 13, type: Google.Ai.Generativelanguage.V1beta.File.Source, enum: true
  field :error, 11, type: Google.Rpc.Status, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.VideoMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :video_duration, 1, type: Google.Protobuf.Duration, json_name: "videoDuration"
end
