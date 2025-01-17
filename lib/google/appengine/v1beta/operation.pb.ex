defmodule Google.Appengine.V1beta.OperationMetadataV1Beta do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :method_metadata, 0

  field :method, 1, type: :string
  field :insert_time, 2, type: Google.Protobuf.Timestamp, json_name: "insertTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :user, 4, type: :string
  field :target, 5, type: :string
  field :ephemeral_message, 6, type: :string, json_name: "ephemeralMessage"
  field :warning, 7, repeated: true, type: :string

  field :create_version_metadata, 8,
    type: Google.Appengine.V1beta.CreateVersionMetadataV1Beta,
    json_name: "createVersionMetadata",
    oneof: 0
end

defmodule Google.Appengine.V1beta.CreateVersionMetadataV1Beta do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cloud_build_id, 1, type: :string, json_name: "cloudBuildId"
end
