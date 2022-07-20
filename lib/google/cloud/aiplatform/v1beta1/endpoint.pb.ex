defmodule Google.Cloud.Aiplatform.V1beta1.Endpoint.TrafficSplitEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end
defmodule Google.Cloud.Aiplatform.V1beta1.Endpoint.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.Endpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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

  field :model_deployment_monitoring_job, 14,
    type: :string,
    json_name: "modelDeploymentMonitoringJob",
    deprecated: false

  field :predict_request_response_logging_config, 18,
    type: Google.Cloud.Aiplatform.V1beta1.PredictRequestResponseLoggingConfig,
    json_name: "predictRequestResponseLoggingConfig"
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeployedModel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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

  field :service_account, 11, type: :string, json_name: "serviceAccount"
  field :enable_container_logging, 12, type: :bool, json_name: "enableContainerLogging"
  field :enable_access_logging, 13, type: :bool, json_name: "enableAccessLogging"

  field :private_endpoints, 14,
    type: Google.Cloud.Aiplatform.V1beta1.PrivateEndpoints,
    json_name: "privateEndpoints",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PrivateEndpoints do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :predict_http_uri, 1, type: :string, json_name: "predictHttpUri", deprecated: false
  field :explain_http_uri, 2, type: :string, json_name: "explainHttpUri", deprecated: false
  field :health_http_uri, 3, type: :string, json_name: "healthHttpUri", deprecated: false
  field :service_attachment, 4, type: :string, json_name: "serviceAttachment", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PredictRequestResponseLoggingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :sampling_rate, 2, type: :double, json_name: "samplingRate"

  field :bigquery_destination, 3,
    type: Google.Cloud.Aiplatform.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination"
end
