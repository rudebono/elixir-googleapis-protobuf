defmodule Google.Cloud.Datacatalog.V1beta1.TableSourceType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TABLE_SOURCE_TYPE_UNSPECIFIED, 0
  field :BIGQUERY_VIEW, 2
  field :BIGQUERY_TABLE, 5
end
defmodule Google.Cloud.Datacatalog.V1beta1.BigQueryTableSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :type_spec, 0

  field :table_source_type, 1,
    type: Google.Cloud.Datacatalog.V1beta1.TableSourceType,
    json_name: "tableSourceType",
    enum: true,
    deprecated: false

  field :view_spec, 2,
    type: Google.Cloud.Datacatalog.V1beta1.ViewSpec,
    json_name: "viewSpec",
    oneof: 0

  field :table_spec, 3,
    type: Google.Cloud.Datacatalog.V1beta1.TableSpec,
    json_name: "tableSpec",
    oneof: 0
end
defmodule Google.Cloud.Datacatalog.V1beta1.ViewSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :view_query, 1, type: :string, json_name: "viewQuery", deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1beta1.TableSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :grouped_entry, 1, type: :string, json_name: "groupedEntry", deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1beta1.BigQueryDateShardedSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :table_prefix, 2, type: :string, json_name: "tablePrefix", deprecated: false
  field :shard_count, 3, type: :int64, json_name: "shardCount", deprecated: false
end
