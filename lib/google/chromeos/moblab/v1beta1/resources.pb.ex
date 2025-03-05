defmodule Google.Chromeos.Moblab.V1beta1.Build.BuildStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BUILD_STATUS_UNSPECIFIED, 0
  field :PASS, 1
  field :FAIL, 2
  field :RUNNING, 3
  field :ABORTED, 4
end

defmodule Google.Chromeos.Moblab.V1beta1.Build.BuildType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BUILD_TYPE_UNSPECIFIED, 0
  field :RELEASE, 1
  field :FIRMWARE, 2
end

defmodule Google.Chromeos.Moblab.V1beta1.CloudBuild.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :QUEUED, 1
  field :PENDING, 2
  field :WORKING, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :INTERNAL_ERROR, 6
  field :TIMEOUT, 7
  field :CANCELLED, 8
  field :EXPIRED, 9
end

defmodule Google.Chromeos.Moblab.V1beta1.BuildTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Chromeos.Moblab.V1beta1.Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Chromeos.Moblab.V1beta1.Milestone do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Chromeos.Moblab.V1beta1.Build do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :milestone, 2, type: :string, deprecated: false
  field :build_version, 3, type: :string, json_name: "buildVersion"
  field :status, 4, type: Google.Chromeos.Moblab.V1beta1.Build.BuildStatus, enum: true
  field :type, 5, type: Google.Chromeos.Moblab.V1beta1.Build.BuildType, enum: true
  field :branch, 6, type: :string
  field :rw_firmware_version, 7, type: :string, json_name: "rwFirmwareVersion"
  field :labels, 8, repeated: true, type: :string
end

defmodule Google.Chromeos.Moblab.V1beta1.BuildArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :build, 2, type: :string, deprecated: false
  field :bucket, 3, type: :string
  field :path, 4, type: :string
  field :object_count, 5, type: :uint32, json_name: "objectCount"
end

defmodule Google.Chromeos.Moblab.V1beta1.CloudBuild do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string, deprecated: false

  field :status, 2,
    type: Google.Chromeos.Moblab.V1beta1.CloudBuild.State,
    enum: true,
    deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false

  field :finish_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "finishTime",
    deprecated: false
end
