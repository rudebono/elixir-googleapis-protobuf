defmodule Google.Cloud.Datacatalog.V1.DataSource.Service do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SERVICE_UNSPECIFIED | :CLOUD_STORAGE | :BIGQUERY

  field :SERVICE_UNSPECIFIED, 0
  field :CLOUD_STORAGE, 1
  field :BIGQUERY, 2
end
defmodule Google.Cloud.Datacatalog.V1.DataSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          properties:
            {:storage_properties, Google.Cloud.Datacatalog.V1.StorageProperties.t() | nil},
          service: Google.Cloud.Datacatalog.V1.DataSource.Service.t(),
          resource: String.t(),
          source_entry: String.t()
        }

  defstruct properties: nil,
            service: :SERVICE_UNSPECIFIED,
            resource: "",
            source_entry: ""

  oneof :properties, 0

  field :service, 1, type: Google.Cloud.Datacatalog.V1.DataSource.Service, enum: true
  field :resource, 2, type: :string
  field :source_entry, 3, type: :string, json_name: "sourceEntry", deprecated: false

  field :storage_properties, 4,
    type: Google.Cloud.Datacatalog.V1.StorageProperties,
    json_name: "storageProperties",
    oneof: 0
end
defmodule Google.Cloud.Datacatalog.V1.StorageProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_pattern: [String.t()],
          file_type: String.t()
        }

  defstruct file_pattern: [],
            file_type: ""

  field :file_pattern, 1, repeated: true, type: :string, json_name: "filePattern"
  field :file_type, 2, type: :string, json_name: "fileType"
end
