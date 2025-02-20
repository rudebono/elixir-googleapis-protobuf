defmodule Google.Cloud.Aiplatform.V1beta1.FeatureGroup.ServiceAgentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SERVICE_AGENT_TYPE_UNSPECIFIED, 0
  field :SERVICE_AGENT_TYPE_PROJECT, 1
  field :SERVICE_AGENT_TYPE_FEATURE_GROUP, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureGroup.BigQuery.TimeSeries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :timestamp_column, 1, type: :string, json_name: "timestampColumn", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureGroup.BigQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :big_query_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.BigQuerySource,
    json_name: "bigQuerySource",
    deprecated: false

  field :entity_id_columns, 2,
    repeated: true,
    type: :string,
    json_name: "entityIdColumns",
    deprecated: false

  field :static_data_source, 3, type: :bool, json_name: "staticDataSource", deprecated: false

  field :time_series, 4,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureGroup.BigQuery.TimeSeries,
    json_name: "timeSeries",
    deprecated: false

  field :dense, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :big_query, 7,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureGroup.BigQuery,
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
    type: Google.Cloud.Aiplatform.V1beta1.FeatureGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :description, 6, type: :string, deprecated: false

  field :service_agent_type, 8,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureGroup.ServiceAgentType,
    json_name: "serviceAgentType",
    enum: true,
    deprecated: false

  field :service_account_email, 9,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false
end
