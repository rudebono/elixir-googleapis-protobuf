defmodule Google.Cloud.Eventarc.V1.Trigger.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.V1.Trigger do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attribute, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
  field :operator, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Destination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :descriptor, 0

  field :cloud_run, 1, type: Google.Cloud.Eventarc.V1.CloudRun, json_name: "cloudRun", oneof: 0
  field :cloud_function, 2, type: :string, json_name: "cloudFunction", oneof: 0, deprecated: false
  field :gke, 3, type: Google.Cloud.Eventarc.V1.GKE, oneof: 0
end

defmodule Google.Cloud.Eventarc.V1.Transport do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :intermediary, 0

  field :pubsub, 1, type: Google.Cloud.Eventarc.V1.Pubsub, oneof: 0
end

defmodule Google.Cloud.Eventarc.V1.CloudRun do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
  field :path, 2, type: :string, deprecated: false
  field :region, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.GKE do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cluster, 1, type: :string, deprecated: false
  field :location, 2, type: :string, deprecated: false
  field :namespace, 3, type: :string, deprecated: false
  field :service, 4, type: :string, deprecated: false
  field :path, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pubsub do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :topic, 1, type: :string, deprecated: false
  field :subscription, 2, type: :string, deprecated: false
end