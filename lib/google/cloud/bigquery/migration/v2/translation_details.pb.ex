defmodule Google.Cloud.Bigquery.Migration.V2.TranslationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_target_mapping, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.SourceTargetMapping,
    json_name: "sourceTargetMapping"

  field :target_base_uri, 2, type: :string, json_name: "targetBaseUri"

  field :source_environment, 3,
    type: Google.Cloud.Bigquery.Migration.V2.SourceEnvironment,
    json_name: "sourceEnvironment"

  field :target_return_literals, 4,
    repeated: true,
    type: :string,
    json_name: "targetReturnLiterals"

  field :target_types, 5, repeated: true, type: :string, json_name: "targetTypes"
end

defmodule Google.Cloud.Bigquery.Migration.V2.SourceTargetMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_spec, 1,
    type: Google.Cloud.Bigquery.Migration.V2.SourceSpec,
    json_name: "sourceSpec"

  field :target_spec, 2,
    type: Google.Cloud.Bigquery.Migration.V2.TargetSpec,
    json_name: "targetSpec"
end

defmodule Google.Cloud.Bigquery.Migration.V2.SourceSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :base_uri, 1, type: :string, json_name: "baseUri", oneof: 0
  field :literal, 2, type: Google.Cloud.Bigquery.Migration.V2.Literal, oneof: 0
  field :encoding, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.TargetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :relative_path, 1, type: :string, json_name: "relativePath"
end

defmodule Google.Cloud.Bigquery.Migration.V2.Literal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :literal_data, 0

  field :literal_string, 2, type: :string, json_name: "literalString", oneof: 0
  field :literal_bytes, 3, type: :bytes, json_name: "literalBytes", oneof: 0
  field :relative_path, 1, type: :string, json_name: "relativePath", deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.SourceEnvironment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :default_database, 1, type: :string, json_name: "defaultDatabase"
  field :schema_search_path, 2, repeated: true, type: :string, json_name: "schemaSearchPath"

  field :metadata_store_dataset, 3,
    type: :string,
    json_name: "metadataStoreDataset",
    deprecated: false
end
