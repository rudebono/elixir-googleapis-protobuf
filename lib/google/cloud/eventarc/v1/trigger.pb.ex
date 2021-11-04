defmodule Google.Cloud.Eventarc.V1.Trigger.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Eventarc.V1.Trigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          event_filters: [Google.Cloud.Eventarc.V1.EventFilter.t()],
          service_account: String.t(),
          destination: Google.Cloud.Eventarc.V1.Destination.t() | nil,
          transport: Google.Cloud.Eventarc.V1.Transport.t() | nil,
          labels: %{String.t() => String.t()},
          etag: String.t()
        }

  defstruct [
    :name,
    :uid,
    :create_time,
    :update_time,
    :event_filters,
    :service_account,
    :destination,
    :transport,
    :labels,
    :etag
  ]

  field :name, 1, type: :string
  field :uid, 2, type: :string
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :event_filters, 8,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.EventFilter,
    json_name: "eventFilters"

  field :service_account, 9, type: :string, json_name: "serviceAccount"
  field :destination, 10, type: Google.Cloud.Eventarc.V1.Destination
  field :transport, 11, type: Google.Cloud.Eventarc.V1.Transport
  field :labels, 12, repeated: true, type: Google.Cloud.Eventarc.V1.Trigger.LabelsEntry, map: true
  field :etag, 99, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Eventarc.V1.EventFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attribute: String.t(),
          value: String.t()
        }

  defstruct [:attribute, :value]

  field :attribute, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Eventarc.V1.Destination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          descriptor: {:cloud_run, Google.Cloud.Eventarc.V1.CloudRun.t() | nil}
        }

  defstruct [:descriptor]

  oneof :descriptor, 0

  field :cloud_run, 1, type: Google.Cloud.Eventarc.V1.CloudRun, json_name: "cloudRun", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Eventarc.V1.Transport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intermediary: {:pubsub, Google.Cloud.Eventarc.V1.Pubsub.t() | nil}
        }

  defstruct [:intermediary]

  oneof :intermediary, 0

  field :pubsub, 1, type: Google.Cloud.Eventarc.V1.Pubsub, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Eventarc.V1.CloudRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          path: String.t(),
          region: String.t()
        }

  defstruct [:service, :path, :region]

  field :service, 1, type: :string
  field :path, 2, type: :string
  field :region, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Eventarc.V1.Pubsub do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          subscription: String.t()
        }

  defstruct [:topic, :subscription]

  field :topic, 1, type: :string
  field :subscription, 2, type: :string

  def transform_module(), do: nil
end
