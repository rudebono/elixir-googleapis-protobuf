defmodule Google.Cloud.Aiplatform.V1.Execution.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :NEW, 1
  field :RUNNING, 2
  field :COMPLETE, 3
  field :FAILED, 4
  field :CACHED, 5
  field :CANCELLED, 6
end

defmodule Google.Cloud.Aiplatform.V1.Execution.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Execution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :state, 6, type: Google.Cloud.Aiplatform.V1.Execution.State, enum: true
  field :etag, 9, type: :string

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Execution.LabelsEntry,
    map: true

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :schema_title, 13, type: :string, json_name: "schemaTitle"
  field :schema_version, 14, type: :string, json_name: "schemaVersion"
  field :metadata, 15, type: Google.Protobuf.Struct
  field :description, 16, type: :string
end
