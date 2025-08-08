defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec.PackageSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pickle_object_gcs_uri, 1,
    type: :string,
    json_name: "pickleObjectGcsUri",
    deprecated: false

  field :dependency_files_gcs_uri, 2,
    type: :string,
    json_name: "dependencyFilesGcsUri",
    deprecated: false

  field :requirements_gcs_uri, 3,
    type: :string,
    json_name: "requirementsGcsUri",
    deprecated: false

  field :python_version, 4, type: :string, json_name: "pythonVersion", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec.DeploymentSpec.ResourceLimitsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec.DeploymentSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :env, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.EnvVar, deprecated: false

  field :secret_env, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SecretEnvVar,
    json_name: "secretEnv",
    deprecated: false

  field :psc_interface_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.PscInterfaceConfig,
    json_name: "pscInterfaceConfig",
    deprecated: false

  field :min_instances, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "minInstances",
    deprecated: false

  field :max_instances, 6,
    proto3_optional: true,
    type: :int32,
    json_name: "maxInstances",
    deprecated: false

  field :resource_limits, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec.DeploymentSpec.ResourceLimitsEntry,
    json_name: "resourceLimits",
    map: true,
    deprecated: false

  field :container_concurrency, 8,
    proto3_optional: true,
    type: :int32,
    json_name: "containerConcurrency",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_account, 1,
    proto3_optional: true,
    type: :string,
    json_name: "serviceAccount",
    deprecated: false

  field :package_spec, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec.PackageSpec,
    json_name: "packageSpec",
    deprecated: false

  field :deployment_spec, 4,
    type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec.DeploymentSpec,
    json_name: "deploymentSpec",
    deprecated: false

  field :class_methods, 3,
    repeated: true,
    type: Google.Protobuf.Struct,
    json_name: "classMethods",
    deprecated: false

  field :agent_framework, 5, type: :string, json_name: "agentFramework", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 7, type: :string, deprecated: false
  field :spec, 3, type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 6, type: :string, deprecated: false

  field :context_spec, 9,
    type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec,
    json_name: "contextSpec",
    deprecated: false

  field :encryption_spec, 11,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig.TtlConfig.GranularTtlConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_ttl, 1, type: Google.Protobuf.Duration, json_name: "createTtl", deprecated: false

  field :generate_created_ttl, 2,
    type: Google.Protobuf.Duration,
    json_name: "generateCreatedTtl",
    deprecated: false

  field :generate_updated_ttl, 3,
    type: Google.Protobuf.Duration,
    json_name: "generateUpdatedTtl",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig.TtlConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :ttl, 0

  field :default_ttl, 1,
    type: Google.Protobuf.Duration,
    json_name: "defaultTtl",
    oneof: 0,
    deprecated: false

  field :granular_ttl_config, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig.TtlConfig.GranularTtlConfig,
    json_name: "granularTtlConfig",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig.GenerationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig.SimilaritySearchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :embedding_model, 1, type: :string, json_name: "embeddingModel", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generation_config, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig.GenerationConfig,
    json_name: "generationConfig",
    deprecated: false

  field :similarity_search_config, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig.SimilaritySearchConfig,
    json_name: "similaritySearchConfig",
    deprecated: false

  field :ttl_config, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig.TtlConfig,
    json_name: "ttlConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :memory_bank_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngineContextSpec.MemoryBankConfig,
    json_name: "memoryBankConfig",
    deprecated: false
end
