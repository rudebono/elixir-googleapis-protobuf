defmodule Google.Chromeos.Moblab.V1beta1.FindMostStableBuildRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :build_target, 1, type: :string, json_name: "buildTarget", deprecated: false
end

defmodule Google.Chromeos.Moblab.V1beta1.FindMostStableBuildResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :build, 1, type: Google.Chromeos.Moblab.V1beta1.Build
end

defmodule Google.Chromeos.Moblab.V1beta1.ListBuildTargetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Chromeos.Moblab.V1beta1.ListBuildTargetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :build_targets, 1,
    repeated: true,
    type: Google.Chromeos.Moblab.V1beta1.BuildTarget,
    json_name: "buildTargets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Chromeos.Moblab.V1beta1.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Chromeos.Moblab.V1beta1.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Chromeos.Moblab.V1beta1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Chromeos.Moblab.V1beta1.ListBuildsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :group_by, 6, type: Google.Protobuf.FieldMask, json_name: "groupBy", deprecated: false
end

defmodule Google.Chromeos.Moblab.V1beta1.ListBuildsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :builds, 1, repeated: true, type: Google.Chromeos.Moblab.V1beta1.Build
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Chromeos.Moblab.V1beta1.CheckBuildStageStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
end

defmodule Google.Chromeos.Moblab.V1beta1.CheckBuildStageStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :is_build_staged, 1, type: :bool, json_name: "isBuildStaged"

  field :staged_build_artifact, 2,
    type: Google.Chromeos.Moblab.V1beta1.BuildArtifact,
    json_name: "stagedBuildArtifact"

  field :source_build_artifact, 3,
    type: Google.Chromeos.Moblab.V1beta1.BuildArtifact,
    json_name: "sourceBuildArtifact"
end

defmodule Google.Chromeos.Moblab.V1beta1.StageBuildRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
end

defmodule Google.Chromeos.Moblab.V1beta1.StageBuildResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :staged_build_artifact, 1,
    type: Google.Chromeos.Moblab.V1beta1.BuildArtifact,
    json_name: "stagedBuildArtifact"
end

defmodule Google.Chromeos.Moblab.V1beta1.StageBuildMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :progress_percent, 1, type: :float, json_name: "progressPercent"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Chromeos.Moblab.V1beta1.BuildService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.chromeos.moblab.v1beta1.BuildService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListBuildTargets,
      Google.Chromeos.Moblab.V1beta1.ListBuildTargetsRequest,
      Google.Chromeos.Moblab.V1beta1.ListBuildTargetsResponse

  rpc :ListModels,
      Google.Chromeos.Moblab.V1beta1.ListModelsRequest,
      Google.Chromeos.Moblab.V1beta1.ListModelsResponse

  rpc :ListBuilds,
      Google.Chromeos.Moblab.V1beta1.ListBuildsRequest,
      Google.Chromeos.Moblab.V1beta1.ListBuildsResponse

  rpc :CheckBuildStageStatus,
      Google.Chromeos.Moblab.V1beta1.CheckBuildStageStatusRequest,
      Google.Chromeos.Moblab.V1beta1.CheckBuildStageStatusResponse

  rpc :StageBuild, Google.Chromeos.Moblab.V1beta1.StageBuildRequest, Google.Longrunning.Operation

  rpc :FindMostStableBuild,
      Google.Chromeos.Moblab.V1beta1.FindMostStableBuildRequest,
      Google.Chromeos.Moblab.V1beta1.FindMostStableBuildResponse
end

defmodule Google.Chromeos.Moblab.V1beta1.BuildService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Chromeos.Moblab.V1beta1.BuildService.Service
end
