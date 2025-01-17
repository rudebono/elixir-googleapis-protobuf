defmodule Google.Cloud.Visionai.V1alpha1.LeaseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :LEASE_TYPE_UNSPECIFIED, 0
  field :LEASE_TYPE_READER, 1
  field :LEASE_TYPE_WRITER, 2
end

defmodule Google.Cloud.Visionai.V1alpha1.ReceiveEventsRequest.SetupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cluster, 1, type: :string
  field :stream, 2, type: :string
  field :receiver, 3, type: :string

  field :controlled_mode, 4,
    type: Google.Cloud.Visionai.V1alpha1.ControlledMode,
    json_name: "controlledMode"

  field :heartbeat_interval, 5, type: Google.Protobuf.Duration, json_name: "heartbeatInterval"

  field :writes_done_grace_period, 6,
    type: Google.Protobuf.Duration,
    json_name: "writesDoneGracePeriod"
end

defmodule Google.Cloud.Visionai.V1alpha1.ReceiveEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :request, 0

  field :setup_request, 1,
    type: Google.Cloud.Visionai.V1alpha1.ReceiveEventsRequest.SetupRequest,
    json_name: "setupRequest",
    oneof: 0

  field :commit_request, 2,
    type: Google.Cloud.Visionai.V1alpha1.CommitRequest,
    json_name: "commitRequest",
    oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.EventUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :stream, 1, type: :string
  field :event, 2, type: :string
  field :series, 3, type: :string
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :offset, 5, type: :int64
end

defmodule Google.Cloud.Visionai.V1alpha1.ReceiveEventsControlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :control, 0

  field :heartbeat, 1, type: :bool, oneof: 0
  field :writes_done_request, 2, type: :bool, json_name: "writesDoneRequest", oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.ReceiveEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :response, 0

  field :event_update, 1,
    type: Google.Cloud.Visionai.V1alpha1.EventUpdate,
    json_name: "eventUpdate",
    oneof: 0

  field :control, 2, type: Google.Cloud.Visionai.V1alpha1.ReceiveEventsControlResponse, oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.Lease do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string
  field :series, 2, type: :string
  field :owner, 3, type: :string
  field :expire_time, 4, type: Google.Protobuf.Timestamp, json_name: "expireTime"

  field :lease_type, 5,
    type: Google.Cloud.Visionai.V1alpha1.LeaseType,
    json_name: "leaseType",
    enum: true
end

defmodule Google.Cloud.Visionai.V1alpha1.AcquireLeaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :series, 1, type: :string
  field :owner, 2, type: :string
  field :term, 3, type: Google.Protobuf.Duration

  field :lease_type, 4,
    type: Google.Cloud.Visionai.V1alpha1.LeaseType,
    json_name: "leaseType",
    enum: true
end

defmodule Google.Cloud.Visionai.V1alpha1.RenewLeaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string
  field :series, 2, type: :string
  field :owner, 3, type: :string
  field :term, 4, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Visionai.V1alpha1.ReleaseLeaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string
  field :series, 2, type: :string
  field :owner, 3, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.ReleaseLeaseResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.RequestMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :stream, 1, type: :string
  field :event, 2, type: :string
  field :series, 3, type: :string
  field :lease_id, 4, type: :string, json_name: "leaseId"
  field :owner, 5, type: :string
  field :lease_term, 6, type: Google.Protobuf.Duration, json_name: "leaseTerm"
end

defmodule Google.Cloud.Visionai.V1alpha1.SendPacketsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :request, 0

  field :packet, 1, type: Google.Cloud.Visionai.V1alpha1.Packet, oneof: 0
  field :metadata, 2, type: Google.Cloud.Visionai.V1alpha1.RequestMetadata, oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.SendPacketsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.ReceivePacketsRequest.SetupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :consumer_mode, 0

  field :eager_receive_mode, 3,
    type: Google.Cloud.Visionai.V1alpha1.EagerMode,
    json_name: "eagerReceiveMode",
    oneof: 0

  field :controlled_receive_mode, 4,
    type: Google.Cloud.Visionai.V1alpha1.ControlledMode,
    json_name: "controlledReceiveMode",
    oneof: 0

  field :metadata, 1, type: Google.Cloud.Visionai.V1alpha1.RequestMetadata
  field :receiver, 2, type: :string
  field :heartbeat_interval, 5, type: Google.Protobuf.Duration, json_name: "heartbeatInterval"

  field :writes_done_grace_period, 6,
    type: Google.Protobuf.Duration,
    json_name: "writesDoneGracePeriod"
end

defmodule Google.Cloud.Visionai.V1alpha1.ReceivePacketsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :request, 0

  field :setup_request, 6,
    type: Google.Cloud.Visionai.V1alpha1.ReceivePacketsRequest.SetupRequest,
    json_name: "setupRequest",
    oneof: 0

  field :commit_request, 7,
    type: Google.Cloud.Visionai.V1alpha1.CommitRequest,
    json_name: "commitRequest",
    oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.ReceivePacketsControlResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :control, 0

  field :heartbeat, 1, type: :bool, oneof: 0
  field :writes_done_request, 2, type: :bool, json_name: "writesDoneRequest", oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.ReceivePacketsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :response, 0

  field :packet, 1, type: Google.Cloud.Visionai.V1alpha1.Packet, oneof: 0
  field :control, 3, type: Google.Cloud.Visionai.V1alpha1.ReceivePacketsControlResponse, oneof: 0
end

defmodule Google.Cloud.Visionai.V1alpha1.EagerMode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Visionai.V1alpha1.ControlledMode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :starting_offset, 0

  field :starting_logical_offset, 1, type: :string, json_name: "startingLogicalOffset", oneof: 0
  field :fallback_starting_offset, 2, type: :string, json_name: "fallbackStartingOffset"
end

defmodule Google.Cloud.Visionai.V1alpha1.CommitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :offset, 1, type: :int64
end

defmodule Google.Cloud.Visionai.V1alpha1.StreamingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.visionai.v1alpha1.StreamingService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :SendPackets,
      stream(Google.Cloud.Visionai.V1alpha1.SendPacketsRequest),
      stream(Google.Cloud.Visionai.V1alpha1.SendPacketsResponse)

  rpc :ReceivePackets,
      stream(Google.Cloud.Visionai.V1alpha1.ReceivePacketsRequest),
      stream(Google.Cloud.Visionai.V1alpha1.ReceivePacketsResponse)

  rpc :ReceiveEvents,
      stream(Google.Cloud.Visionai.V1alpha1.ReceiveEventsRequest),
      stream(Google.Cloud.Visionai.V1alpha1.ReceiveEventsResponse)

  rpc :AcquireLease,
      Google.Cloud.Visionai.V1alpha1.AcquireLeaseRequest,
      Google.Cloud.Visionai.V1alpha1.Lease

  rpc :RenewLease,
      Google.Cloud.Visionai.V1alpha1.RenewLeaseRequest,
      Google.Cloud.Visionai.V1alpha1.Lease

  rpc :ReleaseLease,
      Google.Cloud.Visionai.V1alpha1.ReleaseLeaseRequest,
      Google.Cloud.Visionai.V1alpha1.ReleaseLeaseResponse
end

defmodule Google.Cloud.Visionai.V1alpha1.StreamingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Visionai.V1alpha1.StreamingService.Service
end
