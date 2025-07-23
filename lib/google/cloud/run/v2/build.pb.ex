defmodule Google.Cloud.Run.V2.SubmitBuildRequest.DockerBuild do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Run.V2.SubmitBuildRequest.BuildpacksBuild.EnvironmentVariablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.SubmitBuildRequest.BuildpacksBuild do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :runtime, 1, type: :string, deprecated: true
  field :function_target, 2, type: :string, json_name: "functionTarget", deprecated: false
  field :cache_image_uri, 3, type: :string, json_name: "cacheImageUri", deprecated: false
  field :base_image, 4, type: :string, json_name: "baseImage", deprecated: false

  field :environment_variables, 5,
    repeated: true,
    type: Google.Cloud.Run.V2.SubmitBuildRequest.BuildpacksBuild.EnvironmentVariablesEntry,
    json_name: "environmentVariables",
    map: true,
    deprecated: false

  field :enable_automatic_updates, 6,
    type: :bool,
    json_name: "enableAutomaticUpdates",
    deprecated: false

  field :project_descriptor, 7, type: :string, json_name: "projectDescriptor", deprecated: false
end

defmodule Google.Cloud.Run.V2.SubmitBuildRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  oneof :build_type, 1

  field :parent, 1, type: :string, deprecated: false

  field :storage_source, 2,
    type: Google.Cloud.Run.V2.StorageSource,
    json_name: "storageSource",
    oneof: 0,
    deprecated: false

  field :image_uri, 3, type: :string, json_name: "imageUri", deprecated: false

  field :buildpack_build, 4,
    type: Google.Cloud.Run.V2.SubmitBuildRequest.BuildpacksBuild,
    json_name: "buildpackBuild",
    oneof: 1

  field :docker_build, 5,
    type: Google.Cloud.Run.V2.SubmitBuildRequest.DockerBuild,
    json_name: "dockerBuild",
    oneof: 1

  field :service_account, 6, type: :string, json_name: "serviceAccount", deprecated: false
  field :worker_pool, 7, type: :string, json_name: "workerPool", deprecated: false
  field :tags, 8, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.SubmitBuildResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :build_operation, 1, type: Google.Longrunning.Operation, json_name: "buildOperation"
  field :base_image_uri, 2, type: :string, json_name: "baseImageUri"
  field :base_image_warning, 3, type: :string, json_name: "baseImageWarning"
end

defmodule Google.Cloud.Run.V2.StorageSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object, 2, type: :string, deprecated: false
  field :generation, 3, type: :int64, deprecated: false
end

defmodule Google.Cloud.Run.V2.Builds.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.run.v2.Builds", protoc_gen_elixir_version: "0.15.0"

  rpc :SubmitBuild,
      Google.Cloud.Run.V2.SubmitBuildRequest,
      Google.Cloud.Run.V2.SubmitBuildResponse
end

defmodule Google.Cloud.Run.V2.Builds.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Run.V2.Builds.Service
end
