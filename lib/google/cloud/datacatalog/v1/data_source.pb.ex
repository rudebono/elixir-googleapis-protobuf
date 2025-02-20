defmodule Google.Cloud.Datacatalog.V1.DataSource.Service do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SERVICE_UNSPECIFIED, 0
  field :CLOUD_STORAGE, 1
  field :BIGQUERY, 2
end

defmodule Google.Cloud.Datacatalog.V1.DataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_pattern, 1, repeated: true, type: :string, json_name: "filePattern"
  field :file_type, 2, type: :string, json_name: "fileType"
end
