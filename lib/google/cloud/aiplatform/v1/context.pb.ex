defmodule Google.Cloud.Aiplatform.V1.Context.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.Context do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          parent_contexts: [String.t()],
          schema_title: String.t(),
          schema_version: String.t(),
          metadata: Google.Protobuf.Struct.t() | nil,
          description: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :etag,
    :labels,
    :create_time,
    :update_time,
    :parent_contexts,
    :schema_title,
    :schema_version,
    :metadata,
    :description
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :etag, 8, type: :string

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Context.LabelsEntry,
    map: true

  field :create_time, 10, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 11, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :parent_contexts, 12, repeated: true, type: :string, json_name: "parentContexts"
  field :schema_title, 13, type: :string, json_name: "schemaTitle"
  field :schema_version, 14, type: :string, json_name: "schemaVersion"
  field :metadata, 15, type: Google.Protobuf.Struct
  field :description, 16, type: :string

  def transform_module(), do: nil
end
