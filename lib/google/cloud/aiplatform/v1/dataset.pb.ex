defmodule Google.Cloud.Aiplatform.V1.Dataset.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1.Dataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          metadata_schema_uri: String.t(),
          metadata: Google.Protobuf.Value.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          labels: %{String.t() => String.t()},
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :metadata_schema_uri,
    :metadata,
    :create_time,
    :update_time,
    :etag,
    :labels,
    :encryption_spec
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 16, type: :string
  field :metadata_schema_uri, 3, type: :string, json_name: "metadataSchemaUri"
  field :metadata, 8, type: Google.Protobuf.Value
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :etag, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Dataset.LabelsEntry,
    map: true

  field :encryption_spec, 11,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ImportDataConfig.DataItemLabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1.ImportDataConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Aiplatform.V1.GcsSource.t() | nil},
          data_item_labels: %{String.t() => String.t()},
          import_schema_uri: String.t()
        }

  defstruct [:source, :data_item_labels, :import_schema_uri]

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :data_item_labels, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ImportDataConfig.DataItemLabelsEntry,
    json_name: "dataItemLabels",
    map: true

  field :import_schema_uri, 4, type: :string, json_name: "importSchemaUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ExportDataConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Aiplatform.V1.GcsDestination.t() | nil},
          annotations_filter: String.t()
        }

  defstruct [:destination, :annotations_filter]

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :annotations_filter, 2, type: :string, json_name: "annotationsFilter"

  def transform_module(), do: nil
end
