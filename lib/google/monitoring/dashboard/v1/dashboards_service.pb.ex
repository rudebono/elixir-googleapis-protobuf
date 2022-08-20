defmodule Google.Monitoring.Dashboard.V1.CreateDashboardRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :dashboard, 2, type: Google.Monitoring.Dashboard.V1.Dashboard, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Monitoring.Dashboard.V1.ListDashboardsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Monitoring.Dashboard.V1.ListDashboardsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dashboards, 1, repeated: true, type: Google.Monitoring.Dashboard.V1.Dashboard
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Monitoring.Dashboard.V1.GetDashboardRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.Dashboard.V1.DeleteDashboardRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.Dashboard.V1.UpdateDashboardRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dashboard, 1, type: Google.Monitoring.Dashboard.V1.Dashboard, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Monitoring.Dashboard.V1.DashboardsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.monitoring.dashboard.v1.DashboardsService",
    protoc_gen_elixir_version: "0.11.0"

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