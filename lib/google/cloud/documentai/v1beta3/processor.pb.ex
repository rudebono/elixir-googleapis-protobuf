defmodule Google.Cloud.Documentai.V1beta3.ProcessorVersion.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DEPLOYED, 1
  field :DEPLOYING, 2
  field :UNDEPLOYED, 3
  field :UNDEPLOYING, 4
  field :CREATING, 5
  field :DELETING, 6
  field :FAILED, 7
  field :IMPORTING, 8
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorVersion.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :MODEL_TYPE_GENERATIVE, 1
  field :MODEL_TYPE_CUSTOM, 2
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorVersion.GenAiModelInfo.CustomGenAiModelInfo.CustomModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CUSTOM_MODEL_TYPE_UNSPECIFIED, 0
  field :VERSIONED_FOUNDATION, 1
  field :FINE_TUNED, 2
end

defmodule Google.Cloud.Documentai.V1beta3.Processor.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :ENABLING, 3
  field :DISABLING, 4
  field :CREATING, 5
  field :FAILED, 6
  field :DELETING, 7
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorVersion.DeprecationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :deprecation_time, 1, type: Google.Protobuf.Timestamp, json_name: "deprecationTime"

  field :replacement_processor_version, 2,
    type: :string,
    json_name: "replacementProcessorVersion",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorVersion.GenAiModelInfo.FoundationGenAiModelInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :finetuning_allowed, 1, type: :bool, json_name: "finetuningAllowed"
  field :min_train_labeled_documents, 2, type: :int32, json_name: "minTrainLabeledDocuments"
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorVersion.GenAiModelInfo.CustomGenAiModelInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :custom_model_type, 1,
    type:
      Google.Cloud.Documentai.V1beta3.ProcessorVersion.GenAiModelInfo.CustomGenAiModelInfo.CustomModelType,
    json_name: "customModelType",
    enum: true

  field :base_processor_version_id, 2, type: :string, json_name: "baseProcessorVersionId"
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorVersion.GenAiModelInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :model_info, 0

  field :foundation_gen_ai_model_info, 1,
    type:
      Google.Cloud.Documentai.V1beta3.ProcessorVersion.GenAiModelInfo.FoundationGenAiModelInfo,
    json_name: "foundationGenAiModelInfo",
    oneof: 0

  field :custom_gen_ai_model_info, 2,
    type: Google.Cloud.Documentai.V1beta3.ProcessorVersion.GenAiModelInfo.CustomGenAiModelInfo,
    json_name: "customGenAiModelInfo",
    oneof: 0
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :document_schema, 12,
    type: Google.Cloud.Documentai.V1beta3.DocumentSchema,
    json_name: "documentSchema"

  field :state, 6,
    type: Google.Cloud.Documentai.V1beta3.ProcessorVersion.State,
    enum: true,
    deprecated: false

  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :latest_evaluation, 8,
    type: Google.Cloud.Documentai.V1beta3.EvaluationReference,
    json_name: "latestEvaluation"

  field :kms_key_name, 9, type: :string, json_name: "kmsKeyName"
  field :kms_key_version_name, 10, type: :string, json_name: "kmsKeyVersionName"
  field :google_managed, 11, type: :bool, json_name: "googleManaged", deprecated: false

  field :deprecation_info, 13,
    type: Google.Cloud.Documentai.V1beta3.ProcessorVersion.DeprecationInfo,
    json_name: "deprecationInfo"

  field :model_type, 15,
    type: Google.Cloud.Documentai.V1beta3.ProcessorVersion.ModelType,
    json_name: "modelType",
    enum: true,
    deprecated: false

  field :satisfies_pzs, 16, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 17, type: :bool, json_name: "satisfiesPzi", deprecated: false

  field :gen_ai_model_info, 18,
    type: Google.Cloud.Documentai.V1beta3.ProcessorVersion.GenAiModelInfo,
    json_name: "genAiModelInfo",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessorVersionAlias do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :alias, 1, type: :string
  field :processor_version, 2, type: :string, json_name: "processorVersion", deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.Processor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: :string
  field :display_name, 3, type: :string, json_name: "displayName"

  field :state, 4,
    type: Google.Cloud.Documentai.V1beta3.Processor.State,
    enum: true,
    deprecated: false

  field :default_processor_version, 9,
    type: :string,
    json_name: "defaultProcessorVersion",
    deprecated: false

  field :processor_version_aliases, 10,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.ProcessorVersionAlias,
    json_name: "processorVersionAliases",
    deprecated: false

  field :process_endpoint, 6, type: :string, json_name: "processEndpoint", deprecated: false
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :kms_key_name, 8, type: :string, json_name: "kmsKeyName"
  field :satisfies_pzs, 12, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 13, type: :bool, json_name: "satisfiesPzi", deprecated: false
end
