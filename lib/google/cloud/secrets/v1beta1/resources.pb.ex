defmodule Google.Cloud.Secrets.V1beta1.SecretVersion.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ENABLED | :DISABLED | :DESTROYED

  field :STATE_UNSPECIFIED, 0

  field :ENABLED, 1

  field :DISABLED, 2

  field :DESTROYED, 3
end

defmodule Google.Cloud.Secrets.V1beta1.Secret.LabelsEntry do
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

defmodule Google.Cloud.Secrets.V1beta1.Secret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          replication: Google.Cloud.Secrets.V1beta1.Replication.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :replication, :create_time, :labels]

  field :name, 1, type: :string
  field :replication, 2, type: Google.Cloud.Secrets.V1beta1.Replication
  field :create_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Secrets.V1beta1.Secret.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Secrets.V1beta1.SecretVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          destroy_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Secrets.V1beta1.SecretVersion.State.t()
        }

  defstruct [:name, :create_time, :destroy_time, :state]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :destroy_time, 3, type: Google.Protobuf.Timestamp
  field :state, 4, type: Google.Cloud.Secrets.V1beta1.SecretVersion.State, enum: true
end

defmodule Google.Cloud.Secrets.V1beta1.Replication.Automatic do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Secrets.V1beta1.Replication.UserManaged.Replica do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t()
        }

  defstruct [:location]

  field :location, 1, type: :string
end

defmodule Google.Cloud.Secrets.V1beta1.Replication.UserManaged do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replicas: [Google.Cloud.Secrets.V1beta1.Replication.UserManaged.Replica.t()]
        }

  defstruct [:replicas]

  field :replicas, 1,
    repeated: true,
    type: Google.Cloud.Secrets.V1beta1.Replication.UserManaged.Replica
end

defmodule Google.Cloud.Secrets.V1beta1.Replication do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          replication: {atom, any}
        }

  defstruct [:replication]

  oneof :replication, 0
  field :automatic, 1, type: Google.Cloud.Secrets.V1beta1.Replication.Automatic, oneof: 0
  field :user_managed, 2, type: Google.Cloud.Secrets.V1beta1.Replication.UserManaged, oneof: 0
end

defmodule Google.Cloud.Secrets.V1beta1.SecretPayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary
        }

  defstruct [:data]

  field :data, 1, type: :bytes
end
