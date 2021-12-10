defmodule Google.Chromeos.Moblab.V1beta1.Build.BuildStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :BUILD_STATUS_UNSPECIFIED | :PASS | :FAIL | :RUNNING | :ABORTED

  field :BUILD_STATUS_UNSPECIFIED, 0
  field :PASS, 1
  field :FAIL, 2
  field :RUNNING, 3
  field :ABORTED, 4
end
defmodule Google.Chromeos.Moblab.V1beta1.Build.BuildType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :BUILD_TYPE_UNSPECIFIED | :RELEASE | :FIRMWARE

  field :BUILD_TYPE_UNSPECIFIED, 0
  field :RELEASE, 1
  field :FIRMWARE, 2
end
defmodule Google.Chromeos.Moblab.V1beta1.BuildTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Chromeos.Moblab.V1beta1.Model do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Chromeos.Moblab.V1beta1.Milestone do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Chromeos.Moblab.V1beta1.Build do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          milestone: String.t(),
          build_version: String.t(),
          status: Google.Chromeos.Moblab.V1beta1.Build.BuildStatus.t(),
          type: Google.Chromeos.Moblab.V1beta1.Build.BuildType.t(),
          branch: String.t(),
          rw_firmware_version: String.t()
        }

  defstruct name: "",
            milestone: "",
            build_version: "",
            status: :BUILD_STATUS_UNSPECIFIED,
            type: :BUILD_TYPE_UNSPECIFIED,
            branch: "",
            rw_firmware_version: ""

  field :name, 1, type: :string
  field :milestone, 2, type: :string, deprecated: false
  field :build_version, 3, type: :string, json_name: "buildVersion"
  field :status, 4, type: Google.Chromeos.Moblab.V1beta1.Build.BuildStatus, enum: true
  field :type, 5, type: Google.Chromeos.Moblab.V1beta1.Build.BuildType, enum: true
  field :branch, 6, type: :string
  field :rw_firmware_version, 7, type: :string, json_name: "rwFirmwareVersion"
end
defmodule Google.Chromeos.Moblab.V1beta1.BuildArtifact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          build: String.t(),
          bucket: String.t(),
          path: String.t(),
          object_count: non_neg_integer
        }

  defstruct name: "",
            build: "",
            bucket: "",
            path: "",
            object_count: 0

  field :name, 1, type: :string
  field :build, 2, type: :string, deprecated: false
  field :bucket, 3, type: :string
  field :path, 4, type: :string
  field :object_count, 5, type: :uint32, json_name: "objectCount"
end
