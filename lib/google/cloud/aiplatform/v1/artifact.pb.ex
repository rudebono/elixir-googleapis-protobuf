defmodule Google.Cloud.Aiplatform.V1.Artifact.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :LIVE

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :LIVE, 2
end
defmodule Google.Cloud.Aiplatform.V1.Artifact.LabelsEntry do
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
defmodule Google.Cloud.Aiplatform.V1.Artifact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          uri: String.t(),
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Aiplatform.V1.Artifact.State.t(),
          schema_title: String.t(),
          schema_version: String.t(),
          metadata: Google.Protobuf.Struct.t() | nil,
          description: String.t()
        }

  defstruct name: "",
            display_name: "",
            uri: "",
            etag: "",
            labels: %{},
            create_time: nil,
            update_time: nil,
            state: :STATE_UNSPECIFIED,
            schema_title: "",
            schema_version: "",
            metadata: nil,
            description: ""

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :uri, 6, type: :string
  field :etag, 9, type: :string

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Artifact.LabelsEntry,
    map: true

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 13, type: Google.Cloud.Aiplatform.V1.Artifact.State, enum: true
  field :schema_title, 14, type: :string, json_name: "schemaTitle"
  field :schema_version, 15, type: :string, json_name: "schemaVersion"
  field :metadata, 16, type: Google.Protobuf.Struct
  field :description, 17, type: :string
end
