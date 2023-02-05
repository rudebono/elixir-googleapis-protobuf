defmodule Google.Cloud.Aiplatform.V1beta1.Model.DeploymentResourcesType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DEPLOYMENT_RESOURCES_TYPE_UNSPECIFIED, 0
  field :DEDICATED_RESOURCES, 1
  field :AUTOMATIC_RESOURCES, 2
  field :SHARED_RESOURCES, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.Model.ExportFormat.ExportableContent do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :EXPORTABLE_CONTENT_UNSPECIFIED, 0
  field :ARTIFACT, 1
  field :IMAGE, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelSourceInfo.ModelSourceType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MODEL_SOURCE_TYPE_UNSPECIFIED, 0
  field :AUTOML, 1
  field :CUSTOM, 2
  field :BQML, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.Model.ExportFormat do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :exportable_contents, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Model.ExportFormat.ExportableContent,
    json_name: "exportableContents",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.Model.OriginalModelInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.Model.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Model do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

  field :predict_schemata, 4,
    type: Google.Cloud.Aiplatform.V1beta1.PredictSchemata,
    json_name: "predictSchemata"

  field :metadata_schema_uri, 5, type: :string, json_name: "metadataSchemaUri", deprecated: false
  field :metadata, 6, type: Google.Protobuf.Value, deprecated: false

  field :supported_export_formats, 20,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Model.ExportFormat,
    json_name: "supportedExportFormats",
    deprecated: false

  field :training_pipeline, 7, type: :string, json_name: "trainingPipeline", deprecated: false

  field :container_spec, 9,
    type: Google.Cloud.Aiplatform.V1beta1.ModelContainerSpec,
    json_name: "containerSpec",
    deprecated: false

  field :artifact_uri, 26, type: :string, json_name: "artifactUri", deprecated: false

  field :supported_deployment_resources_types, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Model.DeploymentResourcesType,
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
    type: Google.Cloud.Aiplatform.V1beta1.DeployedModelRef,
    json_name: "deployedModels",
    deprecated: false

  field :explanation_spec, 23,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec,
    json_name: "explanationSpec"

  field :etag, 16, type: :string

  field :labels, 17,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Model.LabelsEntry,
    map: true

  field :encryption_spec, 24,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :model_source_info, 38,
    type: Google.Cloud.Aiplatform.V1beta1.ModelSourceInfo,
    json_name: "modelSourceInfo",
    deprecated: false

  field :original_model_info, 34,
    type: Google.Cloud.Aiplatform.V1beta1.Model.OriginalModelInfo,
    json_name: "originalModelInfo",
    deprecated: false

  field :metadata_artifact, 44, type: :string, json_name: "metadataArtifact", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PredictSchemata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Google.Cloud.Aiplatform.V1beta1.ModelContainerSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :image_uri, 1, type: :string, json_name: "imageUri", deprecated: false
  field :command, 2, repeated: true, type: :string, deprecated: false
  field :args, 3, repeated: true, type: :string, deprecated: false
  field :env, 4, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.EnvVar, deprecated: false
  field :ports, 5, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Port, deprecated: false
  field :predict_route, 6, type: :string, json_name: "predictRoute", deprecated: false
  field :health_route, 7, type: :string, json_name: "healthRoute", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.Port do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :container_port, 3, type: :int32, json_name: "containerPort"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelSourceInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :source_type, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelSourceInfo.ModelSourceType,
    json_name: "sourceType",
    enum: true
end