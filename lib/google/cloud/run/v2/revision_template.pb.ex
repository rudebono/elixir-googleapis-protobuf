defmodule Google.Cloud.Run.V2.RevisionTemplate.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Run.V2.RevisionTemplate.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Run.V2.RevisionTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision: String.t(),
          labels: %{String.t() => String.t()},
          annotations: %{String.t() => String.t()},
          scaling: Google.Cloud.Run.V2.RevisionScaling.t() | nil,
          vpc_access: Google.Cloud.Run.V2.VpcAccess.t() | nil,
          container_concurrency: integer,
          timeout: Google.Protobuf.Duration.t() | nil,
          service_account: String.t(),
          containers: [Google.Cloud.Run.V2.Container.t()],
          volumes: [Google.Cloud.Run.V2.Volume.t()],
          confidential: boolean,
          execution_environment: Google.Cloud.Run.V2.ExecutionEnvironment.t(),
          encryption_key: String.t()
        }

  defstruct revision: "",
            labels: %{},
            annotations: %{},
            scaling: nil,
            vpc_access: nil,
            container_concurrency: 0,
            timeout: nil,
            service_account: "",
            containers: [],
            volumes: [],
            confidential: false,
            execution_environment: :EXECUTION_ENVIRONMENT_UNSPECIFIED,
            encryption_key: ""

  field :revision, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Run.V2.RevisionTemplate.LabelsEntry,
    map: true

  field :annotations, 3,
    repeated: true,
    type: Google.Cloud.Run.V2.RevisionTemplate.AnnotationsEntry,
    map: true

  field :scaling, 4, type: Google.Cloud.Run.V2.RevisionScaling
  field :vpc_access, 6, type: Google.Cloud.Run.V2.VpcAccess, json_name: "vpcAccess"
  field :container_concurrency, 7, type: :int32, json_name: "containerConcurrency"
  field :timeout, 8, type: Google.Protobuf.Duration
  field :service_account, 9, type: :string, json_name: "serviceAccount"
  field :containers, 10, repeated: true, type: Google.Cloud.Run.V2.Container
  field :volumes, 11, repeated: true, type: Google.Cloud.Run.V2.Volume
  field :confidential, 12, type: :bool

  field :execution_environment, 13,
    type: Google.Cloud.Run.V2.ExecutionEnvironment,
    json_name: "executionEnvironment",
    enum: true

  field :encryption_key, 14, type: :string, json_name: "encryptionKey", deprecated: false
end
