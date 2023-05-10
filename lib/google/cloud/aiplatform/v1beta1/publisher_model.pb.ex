defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.OpenSourceCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OPEN_SOURCE_CATEGORY_UNSPECIFIED, 0
  field :PROPRIETARY, 1
  field :GOOGLE_OWNED_OSS_WITH_GOOGLE_CHECKPOINT, 2
  field :THIRD_PARTY_OWNED_OSS_WITH_GOOGLE_CHECKPOINT, 3
  field :GOOGLE_OWNED_OSS, 4
  field :THIRD_PARTY_OWNED_OSS, 5
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.ResourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :reference, 0

  field :uri, 1, type: :string, oneof: 0
  field :resource_name, 2, type: :string, json_name: "resourceName", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.Documentation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :content, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences.ReferencesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.ResourceReference
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :references, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences.ReferencesEntry,
    map: true,
    deprecated: false

  field :title, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.ViewRestApi do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :documentations, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.Documentation,
    deprecated: false

  field :title, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.Deploy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
  field :title, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :view_rest_api, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.ViewRestApi,
    json_name: "viewRestApi",
    deprecated: false

  field :open_notebook, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "openNotebook",
    deprecated: false

  field :create_application, 3,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "createApplication",
    deprecated: false

  field :open_fine_tuning_pipeline, 4,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "openFineTuningPipeline",
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

  field :open_generation_ai_studio, 8,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction.RegionalResourceReferences,
    json_name: "openGenerationAiStudio",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PublisherModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version_id, 2, type: :string, json_name: "versionId", deprecated: false

  field :open_source_category, 7,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.OpenSourceCategory,
    json_name: "openSourceCategory",
    enum: true,
    deprecated: false

  field :supported_actions, 19,
    type: Google.Cloud.Aiplatform.V1beta1.PublisherModel.CallToAction,
    json_name: "supportedActions",
    deprecated: false

  field :frameworks, 23, repeated: true, type: :string, deprecated: false

  field :publisher_model_template, 30,
    type: :string,
    json_name: "publisherModelTemplate",
    deprecated: false

  field :predict_schemata, 31,
    type: Google.Cloud.Aiplatform.V1beta1.PredictSchemata,
    json_name: "predictSchemata",
    deprecated: false
end