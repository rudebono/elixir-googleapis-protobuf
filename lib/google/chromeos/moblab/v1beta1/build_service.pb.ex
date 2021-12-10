defmodule Google.Chromeos.Moblab.V1beta1.FindMostStableBuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_target: String.t()
        }

  defstruct build_target: ""

  field :build_target, 1, type: :string, json_name: "buildTarget", deprecated: false
end
defmodule Google.Chromeos.Moblab.V1beta1.FindMostStableBuildResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build: Google.Chromeos.Moblab.V1beta1.Build.t() | nil
        }

  defstruct build: nil

  field :build, 1, type: Google.Chromeos.Moblab.V1beta1.Build
end
defmodule Google.Chromeos.Moblab.V1beta1.ListBuildTargetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct page_size: 0,
            page_token: ""

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Chromeos.Moblab.V1beta1.ListBuildTargetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_targets: [Google.Chromeos.Moblab.V1beta1.BuildTarget.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct build_targets: [],
            next_page_token: "",
            total_size: 0

  field :build_targets, 1,
    repeated: true,
    type: Google.Chromeos.Moblab.V1beta1.BuildTarget,
    json_name: "buildTargets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Google.Chromeos.Moblab.V1beta1.ListModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Chromeos.Moblab.V1beta1.ListModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          models: [Google.Chromeos.Moblab.V1beta1.Model.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct models: [],
            next_page_token: "",
            total_size: 0

  field :models, 1, repeated: true, type: Google.Chromeos.Moblab.V1beta1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Google.Chromeos.Moblab.V1beta1.ListBuildsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          group_by: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            read_mask: nil,
            group_by: nil

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :group_by, 6, type: Google.Protobuf.FieldMask, json_name: "groupBy", deprecated: false
end
defmodule Google.Chromeos.Moblab.V1beta1.ListBuildsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          builds: [Google.Chromeos.Moblab.V1beta1.Build.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct builds: [],
            next_page_token: "",
            total_size: 0

  field :builds, 1, repeated: true, type: Google.Chromeos.Moblab.V1beta1.Build
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Google.Chromeos.Moblab.V1beta1.CheckBuildStageStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t()
        }

  defstruct name: "",
            filter: ""

  field :name, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
end
defmodule Google.Chromeos.Moblab.V1beta1.CheckBuildStageStatusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_build_staged: boolean,
          staged_build_artifact: Google.Chromeos.Moblab.V1beta1.BuildArtifact.t() | nil,
          source_build_artifact: Google.Chromeos.Moblab.V1beta1.BuildArtifact.t() | nil
        }

  defstruct is_build_staged: false,
            staged_build_artifact: nil,
            source_build_artifact: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t()
        }

  defstruct name: "",
            filter: ""

  field :name, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
end
defmodule Google.Chromeos.Moblab.V1beta1.StageBuildResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          staged_build_artifact: Google.Chromeos.Moblab.V1beta1.BuildArtifact.t() | nil
        }

  defstruct staged_build_artifact: nil

  field :staged_build_artifact, 1,
    type: Google.Chromeos.Moblab.V1beta1.BuildArtifact,
    json_name: "stagedBuildArtifact"
end
defmodule Google.Chromeos.Moblab.V1beta1.StageBuildMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress_percent: float | :infinity | :negative_infinity | :nan,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct progress_percent: 0.0,
            start_time: nil,
            end_time: nil

  field :progress_percent, 1, type: :float, json_name: "progressPercent"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Chromeos.Moblab.V1beta1.BuildService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.chromeos.moblab.v1beta1.BuildService"

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
