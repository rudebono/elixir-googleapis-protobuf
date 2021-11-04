defmodule Google.Monitoring.V3.ListUptimeCheckConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.ListUptimeCheckConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uptime_check_configs: [Google.Monitoring.V3.UptimeCheckConfig.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:uptime_check_configs, :next_page_token, :total_size]

  field :uptime_check_configs, 1,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckConfig,
    json_name: "uptimeCheckConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.GetUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.CreateUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          uptime_check_config: Google.Monitoring.V3.UptimeCheckConfig.t() | nil
        }

  defstruct [:parent, :uptime_check_config]

  field :parent, 1, type: :string

  field :uptime_check_config, 2,
    type: Google.Monitoring.V3.UptimeCheckConfig,
    json_name: "uptimeCheckConfig"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UpdateUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          uptime_check_config: Google.Monitoring.V3.UptimeCheckConfig.t() | nil
        }

  defstruct [:update_mask, :uptime_check_config]

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :uptime_check_config, 3,
    type: Google.Monitoring.V3.UptimeCheckConfig,
    json_name: "uptimeCheckConfig"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.DeleteUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.ListUptimeCheckIpsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.ListUptimeCheckIpsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uptime_check_ips: [Google.Monitoring.V3.UptimeCheckIp.t()],
          next_page_token: String.t()
        }

  defstruct [:uptime_check_ips, :next_page_token]

  field :uptime_check_ips, 1,
    repeated: true,
    type: Google.Monitoring.V3.UptimeCheckIp,
    json_name: "uptimeCheckIps"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UptimeCheckService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.monitoring.v3.UptimeCheckService"

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
