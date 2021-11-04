defmodule Google.Cloud.Aiplatform.V1.Model.DeploymentResourcesType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DEPLOYMENT_RESOURCES_TYPE_UNSPECIFIED
          | :DEDICATED_RESOURCES
          | :AUTOMATIC_RESOURCES

  field :DEPLOYMENT_RESOURCES_TYPE_UNSPECIFIED, 0
  field :DEDICATED_RESOURCES, 1
  field :AUTOMATIC_RESOURCES, 2
end

defmodule Google.Cloud.Aiplatform.V1.Model.ExportFormat.ExportableContent do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EXPORTABLE_CONTENT_UNSPECIFIED | :ARTIFACT | :IMAGE

  field :EXPORTABLE_CONTENT_UNSPECIFIED, 0
  field :ARTIFACT, 1
  field :IMAGE, 2
end

defmodule Google.Cloud.Aiplatform.V1.Model.ExportFormat do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          exportable_contents: [
            Google.Cloud.Aiplatform.V1.Model.ExportFormat.ExportableContent.t()
          ]
        }

  defstruct [:id, :exportable_contents]

  field :id, 1, type: :string

  field :exportable_contents, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Model.ExportFormat.ExportableContent,
    enum: true,
    json_name: "exportableContents"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.Model.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.Model do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          predict_schemata: Google.Cloud.Aiplatform.V1.PredictSchemata.t() | nil,
          metadata_schema_uri: String.t(),
          metadata: Google.Protobuf.Value.t() | nil,
          supported_export_formats: [Google.Cloud.Aiplatform.V1.Model.ExportFormat.t()],
          training_pipeline: String.t(),
          container_spec: Google.Cloud.Aiplatform.V1.ModelContainerSpec.t() | nil,
          artifact_uri: String.t(),
          supported_deployment_resources_types: [
            Google.Cloud.Aiplatform.V1.Model.DeploymentResourcesType.t()
          ],
          supported_input_storage_formats: [String.t()],
          supported_output_storage_formats: [String.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          deployed_models: [Google.Cloud.Aiplatform.V1.DeployedModelRef.t()],
          explanation_spec: Google.Cloud.Aiplatform.V1.ExplanationSpec.t() | nil,
          etag: String.t(),
          labels: %{String.t() => String.t()},
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :predict_schemata,
    :metadata_schema_uri,
    :metadata,
    :supported_export_formats,
    :training_pipeline,
    :container_spec,
    :artifact_uri,
    :supported_deployment_resources_types,
    :supported_input_storage_formats,
    :supported_output_storage_formats,
    :create_time,
    :update_time,
    :deployed_models,
    :explanation_spec,
    :etag,
    :labels,
    :encryption_spec
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :predict_schemata, 4,
    type: Google.Cloud.Aiplatform.V1.PredictSchemata,
    json_name: "predictSchemata"

  field :metadata_schema_uri, 5, type: :string, json_name: "metadataSchemaUri"
  field :metadata, 6, type: Google.Protobuf.Value

  field :supported_export_formats, 20,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Model.ExportFormat,
    json_name: "supportedExportFormats"

  field :training_pipeline, 7, type: :string, json_name: "trainingPipeline"

  field :container_spec, 9,
    type: Google.Cloud.Aiplatform.V1.ModelContainerSpec,
    json_name: "containerSpec"

  field :artifact_uri, 26, type: :string, json_name: "artifactUri"

  field :supported_deployment_resources_types, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Model.DeploymentResourcesType,
    enum: true,
    json_name: "supportedDeploymentResourcesTypes"

  field :supported_input_storage_formats, 11,
    repeated: true,
    type: :string,
    json_name: "supportedInputStorageFormats"

  field :supported_output_storage_formats, 12,
    repeated: true,
    type: :string,
    json_name: "supportedOutputStorageFormats"

  field :create_time, 13, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 14, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :deployed_models, 15,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DeployedModelRef,
    json_name: "deployedModels"

  field :explanation_spec, 23,
    type: Google.Cloud.Aiplatform.V1.ExplanationSpec,
    json_name: "explanationSpec"

  field :etag, 16, type: :string
  field :labels, 17, repeated: true, type: Google.Cloud.Aiplatform.V1.Model.LabelsEntry, map: true

  field :encryption_spec, 24,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.PredictSchemata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_schema_uri: String.t(),
          parameters_schema_uri: String.t(),
          prediction_schema_uri: String.t()
        }

  defstruct [:instance_schema_uri, :parameters_schema_uri, :prediction_schema_uri]

  field :instance_schema_uri, 1, type: :string, json_name: "instanceSchemaUri"
  field :parameters_schema_uri, 2, type: :string, json_name: "parametersSchemaUri"
  field :prediction_schema_uri, 3, type: :string, json_name: "predictionSchemaUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ModelContainerSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_uri: String.t(),
          command: [String.t()],
          args: [String.t()],
          env: [Google.Cloud.Aiplatform.V1.EnvVar.t()],
          ports: [Google.Cloud.Aiplatform.V1.Port.t()],
          predict_route: String.t(),
          health_route: String.t()
        }

  defstruct [:image_uri, :command, :args, :env, :ports, :predict_route, :health_route]

  field :image_uri, 1, type: :string, json_name: "imageUri"
  field :command, 2, repeated: true, type: :string
  field :args, 3, repeated: true, type: :string
  field :env, 4, repeated: true, type: Google.Cloud.Aiplatform.V1.EnvVar
  field :ports, 5, repeated: true, type: Google.Cloud.Aiplatform.V1.Port
  field :predict_route, 6, type: :string, json_name: "predictRoute"
  field :health_route, 7, type: :string, json_name: "healthRoute"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.Port do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          container_port: integer
        }

  defstruct [:container_port]

  field :container_port, 3, type: :int32, json_name: "containerPort"

  def transform_module(), do: nil
end
