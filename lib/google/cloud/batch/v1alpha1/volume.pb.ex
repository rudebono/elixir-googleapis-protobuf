defmodule Google.Cloud.Batch.V1alpha1.Volume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:nfs, Google.Cloud.Batch.V1alpha1.NFS.t() | nil}
            | {:pd, Google.Cloud.Batch.V1alpha1.PD.t() | nil}
            | {:gcs, Google.Cloud.Batch.V1alpha1.GCS.t() | nil},
          mount_path: String.t(),
          mount_options: [String.t()]
        }

  defstruct source: nil,
            mount_path: "",
            mount_options: []

  oneof :source, 0

  field :nfs, 1, type: Google.Cloud.Batch.V1alpha1.NFS, oneof: 0
  field :pd, 2, type: Google.Cloud.Batch.V1alpha1.PD, oneof: 0
  field :gcs, 3, type: Google.Cloud.Batch.V1alpha1.GCS, oneof: 0
  field :mount_path, 4, type: :string, json_name: "mountPath"
  field :mount_options, 5, repeated: true, type: :string, json_name: "mountOptions"
end
defmodule Google.Cloud.Batch.V1alpha1.NFS do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          server: String.t(),
          remote_path: String.t()
        }

  defstruct server: "",
            remote_path: ""

  field :server, 1, type: :string
  field :remote_path, 2, type: :string, json_name: "remotePath"
end
defmodule Google.Cloud.Batch.V1alpha1.PD do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disk: String.t(),
          device: String.t(),
          existing: boolean
        }

  defstruct disk: "",
            device: "",
            existing: false

  field :disk, 1, type: :string
  field :device, 2, type: :string
  field :existing, 3, type: :bool
end
defmodule Google.Cloud.Batch.V1alpha1.GCS do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          remote_path: String.t()
        }

  defstruct remote_path: ""

  field :remote_path, 1, type: :string, json_name: "remotePath"
end
