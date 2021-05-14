defmodule Google.Cloud.Aiplatform.V1beta1.Annotation.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

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

  defstruct [
    :name,
    :payload_schema_uri,
    :payload,
    :create_time,
    :update_time,
    :etag,
    :annotation_source,
    :labels
  ]

  field :name, 1, type: :string
  field :payload_schema_uri, 2, type: :string
  field :payload, 3, type: Google.Protobuf.Value
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 7, type: Google.Protobuf.Timestamp
  field :etag, 8, type: :string
  field :annotation_source, 5, type: Google.Cloud.Aiplatform.V1beta1.UserActionReference

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Annotation.LabelsEntry,
    map: true
end
