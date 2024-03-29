defmodule Google.Cloud.Aiplatform.V1.FeatureGroup.BigQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :big_query_source, 1,
    type: Google.Cloud.Aiplatform.V1.BigQuerySource,
    json_name: "bigQuerySource",
    deprecated: false

  field :entity_id_columns, 2,
    repeated: true,
    type: :string,
    json_name: "entityIdColumns",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FeatureGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.FeatureGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :big_query, 7,
    type: Google.Cloud.Aiplatform.V1.FeatureGroup.BigQuery,
    json_name: "bigQuery",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 4, type: :string, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.FeatureGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 6, type: :string, deprecated: false
end