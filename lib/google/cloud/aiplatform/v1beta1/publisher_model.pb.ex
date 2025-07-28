defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.OpenSourceCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPEN_SOURCE_CATEGORY_UNSPECIFIED, 0
  field :PROPRIETARY, 1
  field :GOOGLE_OWNED_OSS_WITH_GOOGLE_CHECKPOINT, 2
  field :THIRD_PARTY_OWNED_OSS_WITH_GOOGLE_CHECKPOINT, 3
  field :GOOGLE_OWNED_OSS, 4
  field :THIRD_PARTY_OWNED_OSS, 5
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.LaunchStage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LAUNCH_STAGE_UNSPECIFIED, 0
  field :EXPERIMENTAL, 1
  field :PRIVATE_PREVIEW, 2
  field :PUBLIC_PREVIEW, 3
  field :GA, 4
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.VersionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VERSION_STATE_UNSPECIFIED, 0
  field :VERSION_STATE_STABLE, 1
  field :VERSION_STATE_UNSTABLE, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.ResourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :reference, 0

  field :uri, 1, type: :string, oneof: 0
  field :resource_name, 2, type: :string, json_name: "resourceName", oneof: 0
  field :use_case, 3, type: :string, json_name: "useCase", oneof: 0, deprecated: true
  field :description, 4, type: :string, oneof: 0, deprecated: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.Parent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false

  field :reference, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.ResourceReference,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.Documentation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :content, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences.ReferencesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.ResourceReference
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :references, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences.ReferencesEntry,
    map: true,
    deprecated: false

  field :title, 2, type: :string, deprecated: false

  field :resource_title, 3,
    proto3_optional: true,
    type: :string,
    json_name: "resourceTitle",
    deprecated: false

  field :resource_use_case, 4,
    proto3_optional: true,
    type: :string,
    json_name: "resourceUseCase",
    deprecated: false

  field :resource_description, 5,
    proto3_optional: true,
    type: :string,
    json_name: "resourceDescription",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.ViewRestApi do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :documentations, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.Documentation,
    deprecated: false

  field :title, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.OpenNotebooks do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :notebooks, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.OpenFineTuningPipelines do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :fine_tuning_pipelines, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "fineTuningPipelines",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.DeployVertex do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :multi_deploy_vertex, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.Deploy,
    json_name: "multiDeployVertex",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.Deploy.DeployMetadata.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.Deploy.DeployMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.Deploy.DeployMetadata.LabelsEntry,
    map: true,
    deprecated: false

  field :sample_request, 2, type: :string, json_name: "sampleRequest", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.Deploy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :prediction_resources, 0

  field :dedicated_resources, 5,
    type: Google.Cloud.Aiplatform.V1beta1.DedicatedResources,
    json_name: "dedicatedResources",
    oneof: 0

  field :automatic_resources, 6,
    type: Google.Cloud.Aiplatform.V1beta1.AutomaticResources,
    json_name: "automaticResources",
    oneof: 0

  field :shared_resources, 7, type: :string, json_name: "sharedResources", oneof: 0
  field :model_display_name, 1, type: :string, json_name: "modelDisplayName", deprecated: false

  field :large_model_reference, 2,
    type: Google.Cloud.Aiplatform.V1beta1.LargeModelReference,
    json_name: "largeModelReference",
    deprecated: false

  field :container_spec, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ModelContainerSpec,
    json_name: "containerSpec",
    deprecated: false

  field :artifact_uri, 4, type: :string, json_name: "artifactUri", deprecated: false

  field :deploy_task_name, 10,
    proto3_optional: true,
    type: :string,
    json_name: "deployTaskName",
    deprecated: false

  field :deploy_metadata, 11,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.Deploy.DeployMetadata,
    json_name: "deployMetadata",
    deprecated: false

  field :title, 8, type: :string, deprecated: false
  field :public_artifact_uri, 9, type: :string, json_name: "publicArtifactUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.DeployGke do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gke_yaml_configs, 1,
    repeated: true,
    type: :string,
    json_name: "gkeYamlConfigs",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :view_rest_api, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.ViewRestApi,
    json_name: "viewRestApi",
    deprecated: false

  field :open_notebook, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "openNotebook",
    deprecated: false

  field :open_notebooks, 12,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.OpenNotebooks,
    json_name: "openNotebooks",
    deprecated: false

  field :create_application, 3,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "createApplication",
    deprecated: false

  field :open_fine_tuning_pipeline, 4,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "openFineTuningPipeline",
    deprecated: false

  field :open_fine_tuning_pipelines, 13,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.OpenFineTuningPipelines,
    json_name: "openFineTuningPipelines",
    deprecated: false

  field :open_prompt_tuning_pipeline, 5,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "openPromptTuningPipeline",
    deprecated: false

  field :open_genie, 6,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "openGenie",
    deprecated: false

  field :deploy, 7,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.Deploy,
    deprecated: false

  field :multi_deploy_vertex, 16,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.DeployVertex,
    json_name: "multiDeployVertex",
    deprecated: false

  field :deploy_gke, 14,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.DeployGke,
    json_name: "deployGke",
    deprecated: false

  field :open_generation_ai_studio, 8,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "openGenerationAiStudio",
    deprecated: false

  field :request_access, 9,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "requestAccess",
    deprecated: false

  field :open_evaluation_pipeline, 11,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "openEvaluationPipeline",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version_id, 2, type: :string, json_name: "versionId", deprecated: false

  field :open_source_category, 7,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.OpenSourceCategory,
    json_name: "openSourceCategory",
    enum: true,
    deprecated: false

  field :parent, 14,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.Parent,
    deprecated: false

  field :supported_actions, 19,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction,
    json_name: "supportedActions",
    deprecated: false

  field :frameworks, 23, repeated: true, type: :string, deprecated: false

  field :launch_stage, 29,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.LaunchStage,
    json_name: "launchStage",
    enum: true,
    deprecated: false

  field :version_state, 37,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.VersionState,
    json_name: "versionState",
    enum: true,
    deprecated: false

  field :publisher_model_template, 30,
    type: :string,
    json_name: "publisherModelTemplate",
    deprecated: false

  field :predict_schemata, 31,
    type: Google.Cloud.Aiplatform.V1beta1.PredictSchemata,
    json_name: "predictSchemata",
    deprecated: false
end
