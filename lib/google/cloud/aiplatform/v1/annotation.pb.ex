defmodule Google.Cloud.Aiplatform.V1.Annotation.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Aiplatform.V1.Annotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :payload_schema_uri, 2, type: :string, json_name: "payloadSchemaUri", deprecated: false
  field :payload, 3, type: Google.Protobuf.Value, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 8, type: :string, deprecated: false

  field :annotation_source, 5,
    type: Google.Cloud.Aiplatform.V1.UserActionReference,
    json_name: "annotationSource",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Annotation.LabelsEntry,
    map: true,
    deprecated: false
end
