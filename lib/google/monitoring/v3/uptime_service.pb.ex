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
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
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

  field :uptime_check_configs, 1, repeated: true, type: Google.Monitoring.V3.UptimeCheckConfig
  field :next_page_token, 2, type: :string
  field :total_size, 3, type: :int32
end

defmodule Google.Monitoring.V3.GetUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :uptime_check_config, 2, type: Google.Monitoring.V3.UptimeCheckConfig
end

defmodule Google.Monitoring.V3.UpdateUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          uptime_check_config: Google.Monitoring.V3.UptimeCheckConfig.t() | nil
        }

  defstruct [:update_mask, :uptime_check_config]

  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :uptime_check_config, 3, type: Google.Monitoring.V3.UptimeCheckConfig
end

defmodule Google.Monitoring.V3.DeleteUptimeCheckConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Monitoring.V3.ListUptimeCheckIpsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Monitoring.V3.ListUptimeCheckIpsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uptime_check_ips: [Google.Monitoring.V3.UptimeCheckIp.t()],
          next_page_token: String.t()
        }

  defstruct [:uptime_check_ips, :next_page_token]

  field :uptime_check_ips, 1, repeated: true, type: Google.Monitoring.V3.UptimeCheckIp
  field :next_page_token, 2, type: :string
end
