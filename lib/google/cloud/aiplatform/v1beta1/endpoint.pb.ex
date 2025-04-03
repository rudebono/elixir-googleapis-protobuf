defmodule Google.Cloud.Aiplatform.V1beta1.Endpoint.TrafficSplitEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.Endpoint.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Endpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :deployed_models, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedModel,
    json_name: "deployedModels",
    deprecated: false

  field :traffic_split, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Endpoint.TrafficSplitEntry,
    json_name: "trafficSplit",
    map: true

  field :etag, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Endpoint.LabelsEntry,
    map: true

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :encryption_spec, 10,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :network, 13, type: :string, deprecated: false

  field :enable_private_service_connect, 17,
    type: :bool,
    json_name: "enablePrivateServiceConnect",
    deprecated: true

  field :private_service_connect_config, 21,
    type: Google.Cloud.Aiplatform.V1beta1.PrivateServiceConnectConfig,
    json_name: "privateServiceConnectConfig",
    deprecated: false

  field :model_deployment_monitoring_job, 14,
    type: :string,
    json_name: "modelDeploymentMonitoringJob",
    deprecated: false

  field :predict_request_response_logging_config, 18,
    type: Google.Cloud.Aiplatform.V1beta1.PredictRequestResponseLoggingConfig,
    json_name: "predictRequestResponseLoggingConfig"

  field :dedicated_endpoint_enabled, 24, type: :bool, json_name: "dedicatedEndpointEnabled"

  field :dedicated_endpoint_dns, 25,
    type: :string,
    json_name: "dedicatedEndpointDns",
    deprecated: false

  field :client_connection_config, 23,
    type: Google.Cloud.Aiplatform.V1beta1.ClientConnectionConfig,
    json_name: "clientConnectionConfig"

  field :satisfies_pzs, 27, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 28, type: :bool, json_name: "satisfiesPzi", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployedModel.Status do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :message, 1, type: :string, deprecated: false

  field :last_update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false

  field :available_replica_count, 3,
    type: :int32,
    json_name: "availableReplicaCount",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployedModel.SystemLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployedModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :prediction_resources, 0

  field :dedicated_resources, 7,
    type: Google.Cloud.Aiplatform.V1beta1.DedicatedResources,
    json_name: "dedicatedResources",
    oneof: 0

  field :automatic_resources, 8,
    type: Google.Cloud.Aiplatform.V1beta1.AutomaticResources,
    json_name: "automaticResources",
    oneof: 0

  field :shared_resources, 17,
    type: :string,
    json_name: "sharedResources",
    oneof: 0,
    deprecated: false

  field :id, 1, type: :string, deprecated: false
  field :model, 2, type: :string, deprecated: false
  field :model_version_id, 18, type: :string, json_name: "modelVersionId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :explanation_spec, 9,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec,
    json_name: "explanationSpec"

  field :disable_explanations, 19, type: :bool, json_name: "disableExplanations"
  field :service_account, 11, type: :string, json_name: "serviceAccount"
  field :enable_container_logging, 12, type: :bool, json_name: "enableContainerLogging"
  field :enable_access_logging, 13, type: :bool, json_name: "enableAccessLogging"

  field :private_endpoints, 14,
    type: Google.Cloud.Aiplatform.V1beta1.PrivateEndpoints,
    json_name: "privateEndpoints",
    deprecated: false

  field :faster_deployment_config, 23,
    type: Google.Cloud.Aiplatform.V1beta1.FasterDeploymentConfig,
    json_name: "fasterDeploymentConfig"

  field :rollout_options, 25,
    type: Google.Cloud.Aiplatform.V1beta1.RolloutOptions,
    json_name: "rolloutOptions"

  field :status, 26, type: Google.Cloud.Aiplatform.V1beta1.DeployedModel.Status, deprecated: false

  field :system_labels, 28,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedModel.SystemLabelsEntry,
    json_name: "systemLabels",
    map: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.PrivateEndpoints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :predict_http_uri, 1, type: :string, json_name: "predictHttpUri", deprecated: false
  field :explain_http_uri, 2, type: :string, json_name: "explainHttpUri", deprecated: false
  field :health_http_uri, 3, type: :string, json_name: "healthHttpUri", deprecated: false
  field :service_attachment, 4, type: :string, json_name: "serviceAttachment", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PredictRequestResponseLoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool
  field :sampling_rate, 2, type: :double, json_name: "samplingRate"

  field :bigquery_destination, 3,
    type: Google.Cloud.Aiplatform.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination"

  field :request_response_logging_schema_version, 4,
    type: :string,
    json_name: "requestResponseLoggingSchemaVersion",
    deprecated: false

  field :enable_otel_logging, 6, type: :bool, json_name: "enableOtelLogging"
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :logging_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.PredictRequestResponseLoggingConfig,
    json_name: "loggingConfig"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ClientConnectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :inference_timeout, 1, type: Google.Protobuf.Duration, json_name: "inferenceTimeout"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FasterDeploymentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fast_tryout_enabled, 2, type: :bool, json_name: "fastTryoutEnabled"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RolloutOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :max_unavailable, 0

  oneof :max_surge, 1

  field :max_unavailable_replicas, 3, type: :int32, json_name: "maxUnavailableReplicas", oneof: 0

  field :max_unavailable_percentage, 4,
    type: :int32,
    json_name: "maxUnavailablePercentage",
    oneof: 0

  field :max_surge_replicas, 5, type: :int32, json_name: "maxSurgeReplicas", oneof: 1
  field :max_surge_percentage, 6, type: :int32, json_name: "maxSurgePercentage", oneof: 1
  field :previous_deployed_model, 1, type: :string, json_name: "previousDeployedModel"
  field :revision_number, 2, type: :int32, json_name: "revisionNumber", deprecated: false
end
