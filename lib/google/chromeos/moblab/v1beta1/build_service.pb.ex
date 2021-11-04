defmodule Google.Chromeos.Moblab.V1beta1.FindMostStableBuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_target: String.t()
        }

  defstruct [:build_target]

  field :build_target, 1, type: :string, json_name: "buildTarget"

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.FindMostStableBuildResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build: Google.Chromeos.Moblab.V1beta1.Build.t() | nil
        }

  defstruct [:build]

  field :build, 1, type: Google.Chromeos.Moblab.V1beta1.Build

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.ListBuildTargetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.ListBuildTargetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_targets: [Google.Chromeos.Moblab.V1beta1.BuildTarget.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:build_targets, :next_page_token, :total_size]

  field :build_targets, 1,
    repeated: true,
    type: Google.Chromeos.Moblab.V1beta1.BuildTarget,
    json_name: "buildTargets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.ListModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.ListModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          models: [Google.Chromeos.Moblab.V1beta1.Model.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:models, :next_page_token, :total_size]

  field :models, 1, repeated: true, type: Google.Chromeos.Moblab.V1beta1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"

  def transform_module(), do: nil
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

  defstruct [:parent, :page_size, :page_token, :filter, :read_mask, :group_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :group_by, 6, type: Google.Protobuf.FieldMask, json_name: "groupBy"

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.ListBuildsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          builds: [Google.Chromeos.Moblab.V1beta1.Build.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:builds, :next_page_token, :total_size]

  field :builds, 1, repeated: true, type: Google.Chromeos.Moblab.V1beta1.Build
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.CheckBuildStageStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t()
        }

  defstruct [:name, :filter]

  field :name, 1, type: :string
  field :filter, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.CheckBuildStageStatusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_build_staged: boolean,
          staged_build_artifact: Google.Chromeos.Moblab.V1beta1.BuildArtifact.t() | nil,
          source_build_artifact: Google.Chromeos.Moblab.V1beta1.BuildArtifact.t() | nil
        }

  defstruct [:is_build_staged, :staged_build_artifact, :source_build_artifact]

  field :is_build_staged, 1, type: :bool, json_name: "isBuildStaged"

  field :staged_build_artifact, 2,
    type: Google.Chromeos.Moblab.V1beta1.BuildArtifact,
    json_name: "stagedBuildArtifact"

  field :source_build_artifact, 3,
    type: Google.Chromeos.Moblab.V1beta1.BuildArtifact,
    json_name: "sourceBuildArtifact"

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.StageBuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t()
        }

  defstruct [:name, :filter]

  field :name, 1, type: :string
  field :filter, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.StageBuildResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          staged_build_artifact: Google.Chromeos.Moblab.V1beta1.BuildArtifact.t() | nil
        }

  defstruct [:staged_build_artifact]

  field :staged_build_artifact, 1,
    type: Google.Chromeos.Moblab.V1beta1.BuildArtifact,
    json_name: "stagedBuildArtifact"

  def transform_module(), do: nil
end

defmodule Google.Chromeos.Moblab.V1beta1.StageBuildMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress_percent: float | :infinity | :negative_infinity | :nan,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:progress_percent, :start_time, :end_time]

  field :progress_percent, 1, type: :float, json_name: "progressPercent"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
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
