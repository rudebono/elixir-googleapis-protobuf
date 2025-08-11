defmodule Google.Cloud.Aiplatform.V1.ReasoningEngineSpec.PackageSpec do
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

defmodule Google.Cloud.Aiplatform.V1.ReasoningEngineSpec.DeploymentSpec.ResourceLimitsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ReasoningEngineSpec.DeploymentSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :env, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.EnvVar, deprecated: false

  field :secret_env, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.SecretEnvVar,
    json_name: "secretEnv",
    deprecated: false

  field :psc_interface_config, 4,
    type: Google.Cloud.Aiplatform.V1.PscInterfaceConfig,
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
    type: Google.Cloud.Aiplatform.V1.ReasoningEngineSpec.DeploymentSpec.ResourceLimitsEntry,
    json_name: "resourceLimits",
    map: true,
    deprecated: false

  field :container_concurrency, 8,
    proto3_optional: true,
    type: :int32,
    json_name: "containerConcurrency",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReasoningEngineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_account, 1,
    proto3_optional: true,
    type: :string,
    json_name: "serviceAccount",
    deprecated: false

  field :package_spec, 2,
    type: Google.Cloud.Aiplatform.V1.ReasoningEngineSpec.PackageSpec,
    json_name: "packageSpec",
    deprecated: false

  field :deployment_spec, 4,
    type: Google.Cloud.Aiplatform.V1.ReasoningEngineSpec.DeploymentSpec,
    json_name: "deploymentSpec",
    deprecated: false

  field :class_methods, 3,
    repeated: true,
    type: Google.Protobuf.Struct,
    json_name: "classMethods",
    deprecated: false

  field :agent_framework, 5, type: :string, json_name: "agentFramework", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReasoningEngine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 7, type: :string, deprecated: false
  field :spec, 3, type: Google.Cloud.Aiplatform.V1.ReasoningEngineSpec, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 6, type: :string, deprecated: false

  field :encryption_spec, 11,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"
end
