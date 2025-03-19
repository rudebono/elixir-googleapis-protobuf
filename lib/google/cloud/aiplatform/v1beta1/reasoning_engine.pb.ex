defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec.PackageSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec.DeploymentSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :env, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.EnvVar, deprecated: false

  field :secret_env, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SecretEnvVar,
    json_name: "secretEnv",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
end
