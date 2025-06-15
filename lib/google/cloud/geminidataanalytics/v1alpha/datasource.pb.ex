defmodule Google.Cloud.Geminidataanalytics.V1alpha.DatasourceReferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :references, 0

  field :bq, 1, type: Google.Cloud.Geminidataanalytics.V1alpha.BigQueryTableReferences, oneof: 0

  field :studio, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.StudioDatasourceReferences,
    oneof: 0

  field :looker, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.LookerExploreReferences,
    oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.BigQueryTableReferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :table_references, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.BigQueryTableReference,
    json_name: "tableReferences",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.BigQueryTableReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 3, type: :string, json_name: "datasetId", deprecated: false
  field :table_id, 4, type: :string, json_name: "tableId", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.StudioDatasourceReferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :studio_references, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.StudioDatasourceReference,
    json_name: "studioReferences"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.StudioDatasourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :datasource_id, 1, type: :string, json_name: "datasourceId", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.LookerExploreReferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :explore_references, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.LookerExploreReference,
    json_name: "exploreReferences",
    deprecated: false

  field :credentials, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Credentials,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.LookerExploreReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :instance, 0

  field :looker_instance_uri, 9,
    type: :string,
    json_name: "lookerInstanceUri",
    oneof: 0,
    deprecated: false

  field :private_looker_instance_info, 10,
    type: Google.Cloud.Geminidataanalytics.V1alpha.PrivateLookerInstanceInfo,
    json_name: "privateLookerInstanceInfo",
    oneof: 0

  field :lookml_model, 4, type: :string, json_name: "lookmlModel", deprecated: false
  field :explore, 5, type: :string, deprecated: false
  field :schema, 8, type: Google.Cloud.Geminidataanalytics.V1alpha.Schema, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.PrivateLookerInstanceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :looker_instance_id, 1, type: :string, json_name: "lookerInstanceId"
  field :service_directory_name, 2, type: :string, json_name: "serviceDirectoryName"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.Datasource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :reference, 0

  field :bigquery_table_reference, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.BigQueryTableReference,
    json_name: "bigqueryTableReference",
    oneof: 0

  field :studio_datasource_id, 2, type: :string, json_name: "studioDatasourceId", oneof: 0

  field :looker_explore_reference, 4,
    type: Google.Cloud.Geminidataanalytics.V1alpha.LookerExploreReference,
    json_name: "lookerExploreReference",
    oneof: 0

  field :schema, 7, type: Google.Cloud.Geminidataanalytics.V1alpha.Schema, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fields, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Field,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.Field do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :mode, 4, type: :string, deprecated: false
  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false

  field :subfields, 9,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Field,
    deprecated: false
end
