defmodule Google.Cloud.Aiplatform.V1.Model.DeploymentResourcesType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DEPLOYMENT_RESOURCES_TYPE_UNSPECIFIED, 0
  field :DEDICATED_RESOURCES, 1
  field :AUTOMATIC_RESOURCES, 2
  field :SHARED_RESOURCES, 3
end

defmodule Google.Cloud.Aiplatform.V1.Model.ExportFormat.ExportableContent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EXPORTABLE_CONTENT_UNSPECIFIED, 0
  field :ARTIFACT, 1
  field :IMAGE, 2
end

defmodule Google.Cloud.Aiplatform.V1.ModelSourceInfo.ModelSourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODEL_SOURCE_TYPE_UNSPECIFIED, 0
  field :AUTOML, 1
  field :CUSTOM, 2
  field :BQML, 3
  field :MODEL_GARDEN, 4
  field :GENIE, 5
  field :CUSTOM_TEXT_EMBEDDING, 6
  field :MARKETPLACE, 7
end

defmodule Google.Cloud.Aiplatform.V1.Model.ExportFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :exportable_contents, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Model.ExportFormat.ExportableContent,
    json_name: "exportableContents",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Model.DataStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :training_data_items_count, 1, type: :int64, json_name: "trainingDataItemsCount"
  field :validation_data_items_count, 2, type: :int64, json_name: "validationDataItemsCount"
  field :test_data_items_count, 3, type: :int64, json_name: "testDataItemsCount"
  field :training_annotations_count, 4, type: :int64, json_name: "trainingAnnotationsCount"
  field :validation_annotations_count, 5, type: :int64, json_name: "validationAnnotationsCount"
  field :test_annotations_count, 6, type: :int64, json_name: "testAnnotationsCount"
end

defmodule Google.Cloud.Aiplatform.V1.Model.OriginalModelInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Model.BaseModelSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :model_garden_source, 1,
    type: Google.Cloud.Aiplatform.V1.ModelGardenSource,
    json_name: "modelGardenSource",
    oneof: 0

  field :genie_source, 2,
    type: Google.Cloud.Aiplatform.V1.GenieSource,
    json_name: "genieSource",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.Model.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :version_id, 28, type: :string, json_name: "versionId", deprecated: false
  field :version_aliases, 29, repeated: true, type: :string, json_name: "versionAliases"

  field :version_create_time, 31,
    type: Google.Protobuf.Timestamp,
    json_name: "versionCreateTime",
    deprecated: false

  field :version_update_time, 32,
    type: Google.Protobuf.Timestamp,
    json_name: "versionUpdateTime",
    deprecated: false

  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string
  field :version_description, 30, type: :string, json_name: "versionDescription"
  field :default_checkpoint_id, 53, type: :string, json_name: "defaultCheckpointId"

  field :predict_schemata, 4,
    type: Google.Cloud.Aiplatform.V1.PredictSchemata,
    json_name: "predictSchemata"

  field :metadata_schema_uri, 5, type: :string, json_name: "metadataSchemaUri", deprecated: false
  field :metadata, 6, type: Google.Protobuf.Value, deprecated: false

  field :supported_export_formats, 20,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Model.ExportFormat,
    json_name: "supportedExportFormats",
    deprecated: false

  field :training_pipeline, 7, type: :string, json_name: "trainingPipeline", deprecated: false
  field :pipeline_job, 47, type: :string, json_name: "pipelineJob", deprecated: false

  field :container_spec, 9,
    type: Google.Cloud.Aiplatform.V1.ModelContainerSpec,
    json_name: "containerSpec",
    deprecated: false

  field :artifact_uri, 26, type: :string, json_name: "artifactUri", deprecated: false

  field :supported_deployment_resources_types, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Model.DeploymentResourcesType,
    json_name: "supportedDeploymentResourcesTypes",
    enum: true,
    deprecated: false

  field :supported_input_storage_formats, 11,
    repeated: true,
    type: :string,
    json_name: "supportedInputStorageFormats",
    deprecated: false

  field :supported_output_storage_formats, 12,
    repeated: true,
    type: :string,
    json_name: "supportedOutputStorageFormats",
    deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :deployed_models, 15,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DeployedModelRef,
    json_name: "deployedModels",
    deprecated: false

  field :explanation_spec, 23,
    type: Google.Cloud.Aiplatform.V1.ExplanationSpec,
    json_name: "explanationSpec"

  field :etag, 16, type: :string
  field :labels, 17, repeated: true, type: Google.Cloud.Aiplatform.V1.Model.LabelsEntry, map: true
  field :data_stats, 21, type: Google.Cloud.Aiplatform.V1.Model.DataStats, json_name: "dataStats"

  field :encryption_spec, 24,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :model_source_info, 38,
    type: Google.Cloud.Aiplatform.V1.ModelSourceInfo,
    json_name: "modelSourceInfo",
    deprecated: false

  field :original_model_info, 34,
    type: Google.Cloud.Aiplatform.V1.Model.OriginalModelInfo,
    json_name: "originalModelInfo",
    deprecated: false

  field :metadata_artifact, 44, type: :string, json_name: "metadataArtifact", deprecated: false

  field :base_model_source, 50,
    type: Google.Cloud.Aiplatform.V1.Model.BaseModelSource,
    json_name: "baseModelSource",
    deprecated: false

  field :satisfies_pzs, 51, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 52, type: :bool, json_name: "satisfiesPzi", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.LargeModelReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ModelGardenSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :public_model_name, 1, type: :string, json_name: "publicModelName", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GenieSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :base_model_uri, 1, type: :string, json_name: "baseModelUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PredictSchemata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance_schema_uri, 1, type: :string, json_name: "instanceSchemaUri", deprecated: false

  field :parameters_schema_uri, 2,
    type: :string,
    json_name: "parametersSchemaUri",
    deprecated: false

  field :prediction_schema_uri, 3,
    type: :string,
    json_name: "predictionSchemaUri",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ModelContainerSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri", deprecated: false
  field :command, 2, repeated: true, type: :string, deprecated: false
  field :args, 3, repeated: true, type: :string, deprecated: false
  field :env, 4, repeated: true, type: Google.Cloud.Aiplatform.V1.EnvVar, deprecated: false
  field :ports, 5, repeated: true, type: Google.Cloud.Aiplatform.V1.Port, deprecated: false
  field :predict_route, 6, type: :string, json_name: "predictRoute", deprecated: false
  field :health_route, 7, type: :string, json_name: "healthRoute", deprecated: false

  field :grpc_ports, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Port,
    json_name: "grpcPorts",
    deprecated: false

  field :deployment_timeout, 10,
    type: Google.Protobuf.Duration,
    json_name: "deploymentTimeout",
    deprecated: false

  field :shared_memory_size_mb, 11,
    type: :int64,
    json_name: "sharedMemorySizeMb",
    deprecated: false

  field :startup_probe, 12,
    type: Google.Cloud.Aiplatform.V1.Probe,
    json_name: "startupProbe",
    deprecated: false

  field :health_probe, 13,
    type: Google.Cloud.Aiplatform.V1.Probe,
    json_name: "healthProbe",
    deprecated: false

  field :liveness_probe, 14,
    type: Google.Cloud.Aiplatform.V1.Probe,
    json_name: "livenessProbe",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Port do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :container_port, 3, type: :int32, json_name: "containerPort"
end

defmodule Google.Cloud.Aiplatform.V1.ModelSourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_type, 1,
    type: Google.Cloud.Aiplatform.V1.ModelSourceInfo.ModelSourceType,
    json_name: "sourceType",
    enum: true

  field :copy, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1.Probe.ExecAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :command, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Probe.HttpGetAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: :string
  field :port, 2, type: :int32
  field :host, 3, type: :string
  field :scheme, 4, type: :string

  field :http_headers, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Probe.HttpHeader,
    json_name: "httpHeaders"
end

defmodule Google.Cloud.Aiplatform.V1.Probe.GrpcAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :port, 1, type: :int32
  field :service, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Probe.TcpSocketAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :port, 1, type: :int32
  field :host, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Probe.HttpHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Probe do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :probe_type, 0

  field :exec, 1, type: Google.Cloud.Aiplatform.V1.Probe.ExecAction, oneof: 0

  field :http_get, 4,
    type: Google.Cloud.Aiplatform.V1.Probe.HttpGetAction,
    json_name: "httpGet",
    oneof: 0

  field :grpc, 5, type: Google.Cloud.Aiplatform.V1.Probe.GrpcAction, oneof: 0

  field :tcp_socket, 6,
    type: Google.Cloud.Aiplatform.V1.Probe.TcpSocketAction,
    json_name: "tcpSocket",
    oneof: 0

  field :period_seconds, 2, type: :int32, json_name: "periodSeconds"
  field :timeout_seconds, 3, type: :int32, json_name: "timeoutSeconds"
  field :failure_threshold, 7, type: :int32, json_name: "failureThreshold"
  field :success_threshold, 8, type: :int32, json_name: "successThreshold"
  field :initial_delay_seconds, 9, type: :int32, json_name: "initialDelaySeconds"
end
