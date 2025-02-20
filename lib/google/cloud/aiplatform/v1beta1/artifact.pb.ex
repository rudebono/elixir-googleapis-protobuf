defmodule Google.Cloud.Aiplatform.V1beta1.Artifact.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :LIVE, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.Artifact.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Artifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :uri, 6, type: :string
  field :etag, 9, type: :string

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Artifact.LabelsEntry,
    map: true

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 13, type: Google.Cloud.Aiplatform.V1beta1.Artifact.State, enum: true
  field :schema_title, 14, type: :string, json_name: "schemaTitle"
  field :schema_version, 15, type: :string, json_name: "schemaVersion"
  field :metadata, 16, type: Google.Protobuf.Struct
  field :description, 17, type: :string
end
