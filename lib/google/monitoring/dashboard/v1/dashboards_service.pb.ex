defmodule Google.Monitoring.Dashboard.V1.CreateDashboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          dashboard: Google.Monitoring.Dashboard.V1.Dashboard.t() | nil,
          validate_only: boolean
        }

  defstruct [:parent, :dashboard, :validate_only]

  field :parent, 1, type: :string
  field :dashboard, 2, type: Google.Monitoring.Dashboard.V1.Dashboard
  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Dashboard.V1.ListDashboardsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Dashboard.V1.ListDashboardsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dashboards: [Google.Monitoring.Dashboard.V1.Dashboard.t()],
          next_page_token: String.t()
        }

  defstruct [:dashboards, :next_page_token]

  field :dashboards, 1, repeated: true, type: Google.Monitoring.Dashboard.V1.Dashboard
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Dashboard.V1.GetDashboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Dashboard.V1.DeleteDashboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Dashboard.V1.UpdateDashboardRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dashboard: Google.Monitoring.Dashboard.V1.Dashboard.t() | nil,
          validate_only: boolean
        }

  defstruct [:dashboard, :validate_only]

  field :dashboard, 1, type: Google.Monitoring.Dashboard.V1.Dashboard
  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.Dashboard.V1.DashboardsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.monitoring.dashboard.v1.DashboardsService"

  rpc :CreateDashboard,
      Google.Monitoring.Dashboard.V1.CreateDashboardRequest,
      Google.Monitoring.Dashboard.V1.Dashboard

  rpc :ListDashboards,
      Google.Monitoring.Dashboard.V1.ListDashboardsRequest,
      Google.Monitoring.Dashboard.V1.ListDashboardsResponse

  rpc :GetDashboard,
      Google.Monitoring.Dashboard.V1.GetDashboardRequest,
      Google.Monitoring.Dashboard.V1.Dashboard

  rpc :DeleteDashboard,
      Google.Monitoring.Dashboard.V1.DeleteDashboardRequest,
      Google.Protobuf.Empty

  rpc :UpdateDashboard,
      Google.Monitoring.Dashboard.V1.UpdateDashboardRequest,
      Google.Monitoring.Dashboard.V1.Dashboard
end

defmodule Google.Monitoring.Dashboard.V1.DashboardsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Monitoring.Dashboard.V1.DashboardsService.Service
end
