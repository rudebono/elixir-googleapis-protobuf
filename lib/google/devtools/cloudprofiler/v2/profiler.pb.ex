defmodule Google.Devtools.Cloudprofiler.V2.ProfileType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 4, type: :string
  field :deployment, 1, type: Google.Devtools.Cloudprofiler.V2.Deployment

  field :profile_type, 2,
    repeated: true,
    type: Google.Devtools.Cloudprofiler.V2.ProfileType,
    json_name: "profileType",
    enum: true
end
defmodule Google.Devtools.Cloudprofiler.V2.CreateOfflineProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string
  field :profile, 2, type: Google.Devtools.Cloudprofiler.V2.Profile
end
defmodule Google.Devtools.Cloudprofiler.V2.UpdateProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :profile, 1, type: Google.Devtools.Cloudprofiler.V2.Profile
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Devtools.Cloudprofiler.V2.Profile.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Devtools.Cloudprofiler.V2.Profile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string

  field :profile_type, 2,
    type: Google.Devtools.Cloudprofiler.V2.ProfileType,
    json_name: "profileType",
    enum: true

  field :deployment, 3, type: Google.Devtools.Cloudprofiler.V2.Deployment
  field :duration, 4, type: Google.Protobuf.Duration
  field :profile_bytes, 5, type: :bytes, json_name: "profileBytes"

  field :labels, 6,
    repeated: true,
    type: Google.Devtools.Cloudprofiler.V2.Profile.LabelsEntry,
    map: true
end
defmodule Google.Devtools.Cloudprofiler.V2.Deployment.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Devtools.Cloudprofiler.V2.Deployment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :target, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Devtools.Cloudprofiler.V2.Deployment.LabelsEntry,
    map: true
end
defmodule Google.Devtools.Cloudprofiler.V2.ProfilerService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.devtools.cloudprofiler.v2.ProfilerService",
    protoc_gen_elixir_version: "0.10.0"

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
