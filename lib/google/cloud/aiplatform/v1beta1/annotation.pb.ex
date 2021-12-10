defmodule Google.Cloud.Aiplatform.V1beta1.Annotation.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.Annotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          payload_schema_uri: String.t(),
          payload: Google.Protobuf.Value.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          annotation_source: Google.Cloud.Aiplatform.V1beta1.UserActionReference.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct name: "",
            payload_schema_uri: "",
            payload: nil,
            create_time: nil,
            update_time: nil,
            etag: "",
            annotation_source: nil,
            labels: %{}

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
    type: Google.Cloud.Aiplatform.V1beta1.UserActionReference,
    json_name: "annotationSource",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Annotation.LabelsEntry,
    map: true,
    deprecated: false
end
