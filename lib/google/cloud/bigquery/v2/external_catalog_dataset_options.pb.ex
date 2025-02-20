defmodule Google.Cloud.Bigquery.V2.ExternalCatalogDatasetOptions.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.V2.ExternalCatalogDatasetOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parameters, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.ExternalCatalogDatasetOptions.ParametersEntry,
    map: true,
    deprecated: false

  field :default_storage_location_uri, 2,
    type: :string,
    json_name: "defaultStorageLocationUri",
    deprecated: false
end
