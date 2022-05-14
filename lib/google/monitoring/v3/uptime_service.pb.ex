defmodule Google.Monitoring.V3.ListUptimeCheckConfigsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Monitoring.V3.ListUptimeCheckConfigsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uptime_check_configs, 1,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckConfig,
    json_name: "uptimeCheckConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Google.Monitoring.V3.GetUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Monitoring.V3.CreateUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :uptime_check_config, 2,
    type: Google.Monitoring.V3.UptimeCheckConfig,
    json_name: "uptimeCheckConfig",
    deprecated: false
end
defmodule Google.Monitoring.V3.UpdateUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :uptime_check_config, 3,
    type: Google.Monitoring.V3.UptimeCheckConfig,
    json_name: "uptimeCheckConfig",
    deprecated: false
end
defmodule Google.Monitoring.V3.DeleteUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Monitoring.V3.ListUptimeCheckIpsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Monitoring.V3.ListUptimeCheckIpsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uptime_check_ips, 1,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckIp,
    json_name: "uptimeCheckIps"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Monitoring.V3.UptimeCheckService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.monitoring.v3.UptimeCheckService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListUptimeCheckConfigs,
      Google.Monitoring.V3.ListUptimeCheckConfigsRequest,
      Google.Monitoring.V3.ListUptimeCheckConfigsResponse

  rpc :GetUptimeCheckConfig,
      Google.Monitoring.V3.GetUptimeCheckConfigRequest,
      Google.Monitoring.V3.UptimeCheckConfig

  rpc :CreateUptimeCheckConfig,
      Google.Monitoring.V3.CreateUptimeCheckConfigRequest,
      Google.Monitoring.V3.UptimeCheckConfig

  rpc :UpdateUptimeCheckConfig,
      Google.Monitoring.V3.UpdateUptimeCheckConfigRequest,
      Google.Monitoring.V3.UptimeCheckConfig

  rpc :DeleteUptimeCheckConfig,
      Google.Monitoring.V3.DeleteUptimeCheckConfigRequest,
      Google.Protobuf.Empty

  rpc :ListUptimeCheckIps,
      Google.Monitoring.V3.ListUptimeCheckIpsRequest,
      Google.Monitoring.V3.ListUptimeCheckIpsResponse
end

defmodule Google.Monitoring.V3.UptimeCheckService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Monitoring.V3.UptimeCheckService.Service
end
