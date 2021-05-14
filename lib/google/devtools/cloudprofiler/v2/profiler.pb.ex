defmodule Google.Devtools.Cloudprofiler.V2.ProfileType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PROFILE_TYPE_UNSPECIFIED
          | :CPU
          | :WALL
          | :HEAP
          | :THREADS
          | :CONTENTION
          | :PEAK_HEAP
          | :HEAP_ALLOC

  field :PROFILE_TYPE_UNSPECIFIED, 0

  field :CPU, 1

  field :WALL, 2

  field :HEAP, 3

  field :THREADS, 4

  field :CONTENTION, 5

  field :PEAK_HEAP, 6

  field :HEAP_ALLOC, 7
end

defmodule Google.Devtools.Cloudprofiler.V2.CreateProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          deployment: Google.Devtools.Cloudprofiler.V2.Deployment.t() | nil,
          profile_type: [[Google.Devtools.Cloudprofiler.V2.ProfileType.t()]]
        }

  defstruct [:parent, :deployment, :profile_type]

  field :parent, 4, type: :string
  field :deployment, 1, type: Google.Devtools.Cloudprofiler.V2.Deployment

  field :profile_type, 2,
    repeated: true,
    type: Google.Devtools.Cloudprofiler.V2.ProfileType,
    enum: true
end

defmodule Google.Devtools.Cloudprofiler.V2.CreateOfflineProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          profile: Google.Devtools.Cloudprofiler.V2.Profile.t() | nil
        }

  defstruct [:parent, :profile]

  field :parent, 1, type: :string
  field :profile, 2, type: Google.Devtools.Cloudprofiler.V2.Profile
end

defmodule Google.Devtools.Cloudprofiler.V2.UpdateProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          profile: Google.Devtools.Cloudprofiler.V2.Profile.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:profile, :update_mask]

  field :profile, 1, type: Google.Devtools.Cloudprofiler.V2.Profile
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Devtools.Cloudprofiler.V2.Profile.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Cloudprofiler.V2.Profile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          profile_type: Google.Devtools.Cloudprofiler.V2.ProfileType.t(),
          deployment: Google.Devtools.Cloudprofiler.V2.Deployment.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil,
          profile_bytes: binary,
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :profile_type, :deployment, :duration, :profile_bytes, :labels]

  field :name, 1, type: :string
  field :profile_type, 2, type: Google.Devtools.Cloudprofiler.V2.ProfileType, enum: true
  field :deployment, 3, type: Google.Devtools.Cloudprofiler.V2.Deployment
  field :duration, 4, type: Google.Protobuf.Duration
  field :profile_bytes, 5, type: :bytes

  field :labels, 6,
    repeated: true,
    type: Google.Devtools.Cloudprofiler.V2.Profile.LabelsEntry,
    map: true
end

defmodule Google.Devtools.Cloudprofiler.V2.Deployment.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Cloudprofiler.V2.Deployment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          target: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [:project_id, :target, :labels]

  field :project_id, 1, type: :string
  field :target, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Devtools.Cloudprofiler.V2.Deployment.LabelsEntry,
    map: true
end

defmodule Google.Devtools.Cloudprofiler.V2.ProfilerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.cloudprofiler.v2.ProfilerService"

  rpc :CreateProfile,
      Google.Devtools.Cloudprofiler.V2.CreateProfileRequest,
      Google.Devtools.Cloudprofiler.V2.Profile

  rpc :CreateOfflineProfile,
      Google.Devtools.Cloudprofiler.V2.CreateOfflineProfileRequest,
      Google.Devtools.Cloudprofiler.V2.Profile

  rpc :UpdateProfile,
      Google.Devtools.Cloudprofiler.V2.UpdateProfileRequest,
      Google.Devtools.Cloudprofiler.V2.Profile
end

defmodule Google.Devtools.Cloudprofiler.V2.ProfilerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Cloudprofiler.V2.ProfilerService.Service
end
