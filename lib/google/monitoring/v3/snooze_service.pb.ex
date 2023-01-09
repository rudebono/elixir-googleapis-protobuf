defmodule Google.Monitoring.V3.CreateSnoozeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :snooze, 2, type: Google.Monitoring.V3.Snooze, deprecated: false
end

defmodule Google.Monitoring.V3.ListSnoozesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Monitoring.V3.ListSnoozesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :snoozes, 1, repeated: true, type: Google.Monitoring.V3.Snooze
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Monitoring.V3.GetSnoozeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.UpdateSnoozeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :snooze, 1, type: Google.Monitoring.V3.Snooze, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Monitoring.V3.SnoozeService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.monitoring.v3.SnoozeService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateSnooze, Google.Monitoring.V3.CreateSnoozeRequest, Google.Monitoring.V3.Snooze

  rpc :ListSnoozes,
      Google.Monitoring.V3.ListSnoozesRequest,
      Google.Monitoring.V3.ListSnoozesResponse

  rpc :GetSnooze, Google.Monitoring.V3.GetSnoozeRequest, Google.Monitoring.V3.Snooze

  rpc :UpdateSnooze, Google.Monitoring.V3.UpdateSnoozeRequest, Google.Monitoring.V3.Snooze
end

defmodule Google.Monitoring.V3.SnoozeService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Monitoring.V3.SnoozeService.Service
end