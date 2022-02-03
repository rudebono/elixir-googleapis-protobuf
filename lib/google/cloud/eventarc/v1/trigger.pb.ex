defmodule Google.Cloud.Eventarc.V1.Trigger.LabelsEntry do
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
          channel: String.t(),
          etag: String.t()
        }

  defstruct name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            event_filters: [],
            service_account: "",
            destination: nil,
            transport: nil,
            labels: %{},
            channel: "",
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :event_filters, 8,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.EventFilter,
    json_name: "eventFilters",
    deprecated: false

  field :service_account, 9, type: :string, json_name: "serviceAccount", deprecated: false
  field :destination, 10, type: Google.Cloud.Eventarc.V1.Destination, deprecated: false
  field :transport, 11, type: Google.Cloud.Eventarc.V1.Transport, deprecated: false

  field :labels, 12,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.Trigger.LabelsEntry,
    map: true,
    deprecated: false

  field :channel, 13, type: :string, deprecated: false
  field :etag, 99, type: :string, deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.EventFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attribute: String.t(),
          value: String.t(),
          operator: String.t()
        }

  defstruct attribute: "",
            value: "",
            operator: ""

  field :attribute, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
  field :operator, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.Destination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          descriptor:
            {:cloud_run, Google.Cloud.Eventarc.V1.CloudRun.t() | nil}
            | {:cloud_function, String.t()}
            | {:gke, Google.Cloud.Eventarc.V1.GKE.t() | nil}
        }

  defstruct descriptor: nil

  oneof :descriptor, 0

  field :cloud_run, 1, type: Google.Cloud.Eventarc.V1.CloudRun, json_name: "cloudRun", oneof: 0
  field :cloud_function, 2, type: :string, json_name: "cloudFunction", oneof: 0, deprecated: false
  field :gke, 3, type: Google.Cloud.Eventarc.V1.GKE, oneof: 0
end
defmodule Google.Cloud.Eventarc.V1.Transport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          intermediary: {:pubsub, Google.Cloud.Eventarc.V1.Pubsub.t() | nil}
        }

  defstruct intermediary: nil

  oneof :intermediary, 0

  field :pubsub, 1, type: Google.Cloud.Eventarc.V1.Pubsub, oneof: 0
end
defmodule Google.Cloud.Eventarc.V1.CloudRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          path: String.t(),
          region: String.t()
        }

  defstruct service: "",
            path: "",
            region: ""

  field :service, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :region, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.GKE do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster: String.t(),
          location: String.t(),
          namespace: String.t(),
          service: String.t(),
          path: String.t()
        }

  defstruct cluster: "",
            location: "",
            namespace: "",
            service: "",
            path: ""

  field :cluster, 1, type: :string, deprecated: false
  field :location, 2, type: :string, deprecated: false
  field :namespace, 3, type: :string, deprecated: false
  field :service, 4, type: :string, deprecated: false
  field :path, 5, type: :string, deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.Pubsub do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          subscription: String.t()
        }

  defstruct topic: "",
            subscription: ""

  field :topic, 1, type: :string, deprecated: false
  field :subscription, 2, type: :string, deprecated: false
end
