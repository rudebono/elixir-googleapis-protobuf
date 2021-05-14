defmodule Google.Api.MonitoredResourceDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          display_name: String.t(),
          description: String.t(),
          labels: [Google.Api.LabelDescriptor.t()],
          launch_stage: Google.Api.LaunchStage.t()
        }

  defstruct [:name, :type, :display_name, :description, :labels, :launch_stage]

  field :name, 5, type: :string
  field :type, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :labels, 4, repeated: true, type: Google.Api.LabelDescriptor
  field :launch_stage, 7, type: Google.Api.LaunchStage, enum: true
end

defmodule Google.Api.MonitoredResource.LabelsEntry do
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

defmodule Google.Api.MonitoredResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [:type, :labels]

  field :type, 1, type: :string
  field :labels, 2, repeated: true, type: Google.Api.MonitoredResource.LabelsEntry, map: true
end

defmodule Google.Api.MonitoredResourceMetadata.UserLabelsEntry do
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

defmodule Google.Api.MonitoredResourceMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          system_labels: Google.Protobuf.Struct.t() | nil,
          user_labels: %{String.t() => String.t()}
        }

  defstruct [:system_labels, :user_labels]

  field :system_labels, 1, type: Google.Protobuf.Struct

  field :user_labels, 2,
    repeated: true,
    type: Google.Api.MonitoredResourceMetadata.UserLabelsEntry,
    map: true
end
