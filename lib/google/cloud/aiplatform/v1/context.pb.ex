defmodule Google.Cloud.Aiplatform.V1.Context.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Context do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :etag, 8, type: :string

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Context.LabelsEntry,
    map: true

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :parent_contexts, 12,
    repeated: true,
    type: :string,
    json_name: "parentContexts",
    deprecated: false

  field :schema_title, 13, type: :string, json_name: "schemaTitle"
  field :schema_version, 14, type: :string, json_name: "schemaVersion"
  field :metadata, 15, type: Google.Protobuf.Struct
  field :description, 16, type: :string
end
