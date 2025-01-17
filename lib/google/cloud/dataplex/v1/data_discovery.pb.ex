defmodule Google.Cloud.Dataplex.V1.DataDiscoverySpec.BigQueryPublishingConfig.TableType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TABLE_TYPE_UNSPECIFIED, 0
  field :EXTERNAL, 1
  field :BIGLAKE, 2
end

defmodule Google.Cloud.Dataplex.V1.DataDiscoverySpec.BigQueryPublishingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :table_type, 2,
    type: Google.Cloud.Dataplex.V1.DataDiscoverySpec.BigQueryPublishingConfig.TableType,
    json_name: "tableType",
    enum: true,
    deprecated: false

  field :connection, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataDiscoverySpec.StorageConfig.CsvOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :header_rows, 1, type: :int32, json_name: "headerRows", deprecated: false
  field :delimiter, 2, type: :string, deprecated: false
  field :encoding, 3, type: :string, deprecated: false

  field :type_inference_disabled, 4,
    type: :bool,
    json_name: "typeInferenceDisabled",
    deprecated: false

  field :quote, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataDiscoverySpec.StorageConfig.JsonOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :encoding, 1, type: :string, deprecated: false

  field :type_inference_disabled, 2,
    type: :bool,
    json_name: "typeInferenceDisabled",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataDiscoverySpec.StorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :include_patterns, 1,
    repeated: true,
    type: :string,
    json_name: "includePatterns",
    deprecated: false

  field :exclude_patterns, 2,
    repeated: true,
    type: :string,
    json_name: "excludePatterns",
    deprecated: false

  field :csv_options, 3,
    type: Google.Cloud.Dataplex.V1.DataDiscoverySpec.StorageConfig.CsvOptions,
    json_name: "csvOptions",
    deprecated: false

  field :json_options, 4,
    type: Google.Cloud.Dataplex.V1.DataDiscoverySpec.StorageConfig.JsonOptions,
    json_name: "jsonOptions",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataDiscoverySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :resource_config, 0

  field :bigquery_publishing_config, 1,
    type: Google.Cloud.Dataplex.V1.DataDiscoverySpec.BigQueryPublishingConfig,
    json_name: "bigqueryPublishingConfig",
    deprecated: false

  field :storage_config, 100,
    type: Google.Cloud.Dataplex.V1.DataDiscoverySpec.StorageConfig,
    json_name: "storageConfig",
    oneof: 0
end

defmodule Google.Cloud.Dataplex.V1.DataDiscoveryResult.BigQueryPublishing do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataDiscoveryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bigquery_publishing, 1,
    type: Google.Cloud.Dataplex.V1.DataDiscoveryResult.BigQueryPublishing,
    json_name: "bigqueryPublishing",
    deprecated: false
end
