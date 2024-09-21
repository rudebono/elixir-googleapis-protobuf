defmodule Google.Cloud.Datacatalog.V1.DataplexSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :asset, 1, type: :string
  field :data_format, 2, type: Google.Cloud.Datacatalog.V1.PhysicalSchema, json_name: "dataFormat"
  field :compression_format, 3, type: :string, json_name: "compressionFormat"
  field :project_id, 4, type: :string, json_name: "projectId"
end

defmodule Google.Cloud.Datacatalog.V1.DataplexFilesetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dataplex_spec, 1,
    type: Google.Cloud.Datacatalog.V1.DataplexSpec,
    json_name: "dataplexSpec"
end

defmodule Google.Cloud.Datacatalog.V1.DataplexTableSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :external_tables, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.DataplexExternalTable,
    json_name: "externalTables"

  field :dataplex_spec, 2,
    type: Google.Cloud.Datacatalog.V1.DataplexSpec,
    json_name: "dataplexSpec"

  field :user_managed, 3, type: :bool, json_name: "userManaged"
end

defmodule Google.Cloud.Datacatalog.V1.DataplexExternalTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :system, 1, type: Google.Cloud.Datacatalog.V1.IntegratedSystem, enum: true
  field :fully_qualified_name, 28, type: :string, json_name: "fullyQualifiedName"
  field :google_cloud_resource, 3, type: :string, json_name: "googleCloudResource"
  field :data_catalog_entry, 4, type: :string, json_name: "dataCatalogEntry"
end