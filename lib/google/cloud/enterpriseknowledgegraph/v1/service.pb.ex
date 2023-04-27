defmodule Google.Cloud.Enterpriseknowledgegraph.V1.InputConfig.EntityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENTITY_TYPE_UNSPECIFIED, 0
  field :PEOPLE, 1
  field :ESTABLISHMENT, 2
  field :PROPERTY, 3
  field :PRODUCT, 4
  field :ORGANIZATION, 5
  field :LOCAL_BUSINESS, 6
  field :PERSON, 7
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.InputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bigquery_input_configs, 1,
    repeated: true,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.BigQueryInputConfig,
    json_name: "bigqueryInputConfigs"

  field :entity_type, 2,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.InputConfig.EntityType,
    json_name: "entityType",
    enum: true

  field :previous_result_bigquery_table, 3,
    type: :string,
    json_name: "previousResultBigqueryTable",
    deprecated: false
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.BigQueryInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bigquery_table, 1, type: :string, json_name: "bigqueryTable", deprecated: false
  field :gcs_uri, 2, type: :string, json_name: "gcsUri", deprecated: false
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.OutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bigquery_dataset, 1, type: :string, json_name: "bigqueryDataset", deprecated: false
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.ReconConfig.Options do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_geocoding_separation, 100, type: :bool, json_name: "enableGeocodingSeparation"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.ReconConfig.ModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :model_name, 1, type: :string, json_name: "modelName"
  field :version_tag, 2, type: :string, json_name: "versionTag"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.ReconConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :clustering_config, 0

  field :connected_components_config, 1,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.ConnectedComponentsConfig,
    json_name: "connectedComponentsConfig",
    oneof: 0

  field :affinity_clustering_config, 2,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.AffinityClusteringConfig,
    json_name: "affinityClusteringConfig",
    oneof: 0

  field :options, 3, type: Google.Cloud.Enterpriseknowledgegraph.V1.ReconConfig.Options

  field :model_config, 4,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.ReconConfig.ModelConfig,
    json_name: "modelConfig"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.ConnectedComponentsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :weight_threshold, 1, type: :float, json_name: "weightThreshold"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.AffinityClusteringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :compression_round_count, 1, type: :int64, json_name: "compressionRoundCount"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.DeleteOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.CommonOperationMetadata,
    json_name: "commonMetadata"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.CreateEntityReconciliationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entity_reconciliation_job, 2,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.EntityReconciliationJob,
    json_name: "entityReconciliationJob",
    deprecated: false
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.GetEntityReconciliationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.ListEntityReconciliationJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.ListEntityReconciliationJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :entity_reconciliation_jobs, 1,
    repeated: true,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.EntityReconciliationJob,
    json_name: "entityReconciliationJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.CancelEntityReconciliationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.DeleteEntityReconciliationJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.EntityReconciliationJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.InputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :output_config, 3,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.JobState,
    enum: true,
    deprecated: false

  field :error, 5, type: Google.Rpc.Status, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :recon_config, 9,
    type: Google.Cloud.Enterpriseknowledgegraph.V1.ReconConfig,
    json_name: "reconConfig",
    deprecated: false
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.LookupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :ids, 2, repeated: true, type: :string, deprecated: false
  field :languages, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.LookupResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :context, 1, type: Google.Protobuf.Value
  field :type, 2, type: Google.Protobuf.Value
  field :item_list_element, 3, type: Google.Protobuf.ListValue, json_name: "itemListElement"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.SearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :languages, 3, repeated: true, type: :string
  field :types, 4, repeated: true, type: :string
  field :limit, 6, type: Google.Protobuf.Int32Value
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.SearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :context, 1, type: Google.Protobuf.Value
  field :type, 2, type: Google.Protobuf.Value
  field :item_list_element, 3, type: Google.Protobuf.ListValue, json_name: "itemListElement"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.LookupPublicKgRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :ids, 2, repeated: true, type: :string, deprecated: false
  field :languages, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.LookupPublicKgResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :context, 1, type: Google.Protobuf.Value
  field :type, 2, type: Google.Protobuf.Value
  field :item_list_element, 3, type: Google.Protobuf.ListValue, json_name: "itemListElement"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.SearchPublicKgRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :languages, 3, repeated: true, type: :string
  field :types, 4, repeated: true, type: :string
  field :limit, 6, type: Google.Protobuf.Int32Value
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.SearchPublicKgResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :context, 1, type: Google.Protobuf.Value
  field :type, 2, type: Google.Protobuf.Value
  field :item_list_element, 3, type: Google.Protobuf.ListValue, json_name: "itemListElement"
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.EnterpriseKnowledgeGraphService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.enterpriseknowledgegraph.v1.EnterpriseKnowledgeGraphService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateEntityReconciliationJob,
      Google.Cloud.Enterpriseknowledgegraph.V1.CreateEntityReconciliationJobRequest,
      Google.Cloud.Enterpriseknowledgegraph.V1.EntityReconciliationJob

  rpc :GetEntityReconciliationJob,
      Google.Cloud.Enterpriseknowledgegraph.V1.GetEntityReconciliationJobRequest,
      Google.Cloud.Enterpriseknowledgegraph.V1.EntityReconciliationJob

  rpc :ListEntityReconciliationJobs,
      Google.Cloud.Enterpriseknowledgegraph.V1.ListEntityReconciliationJobsRequest,
      Google.Cloud.Enterpriseknowledgegraph.V1.ListEntityReconciliationJobsResponse

  rpc :CancelEntityReconciliationJob,
      Google.Cloud.Enterpriseknowledgegraph.V1.CancelEntityReconciliationJobRequest,
      Google.Protobuf.Empty

  rpc :DeleteEntityReconciliationJob,
      Google.Cloud.Enterpriseknowledgegraph.V1.DeleteEntityReconciliationJobRequest,
      Google.Protobuf.Empty

  rpc :Lookup,
      Google.Cloud.Enterpriseknowledgegraph.V1.LookupRequest,
      Google.Cloud.Enterpriseknowledgegraph.V1.LookupResponse

  rpc :Search,
      Google.Cloud.Enterpriseknowledgegraph.V1.SearchRequest,
      Google.Cloud.Enterpriseknowledgegraph.V1.SearchResponse

  rpc :LookupPublicKg,
      Google.Cloud.Enterpriseknowledgegraph.V1.LookupPublicKgRequest,
      Google.Cloud.Enterpriseknowledgegraph.V1.LookupPublicKgResponse

  rpc :SearchPublicKg,
      Google.Cloud.Enterpriseknowledgegraph.V1.SearchPublicKgRequest,
      Google.Cloud.Enterpriseknowledgegraph.V1.SearchPublicKgResponse
end

defmodule Google.Cloud.Enterpriseknowledgegraph.V1.EnterpriseKnowledgeGraphService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Enterpriseknowledgegraph.V1.EnterpriseKnowledgeGraphService.Service
end