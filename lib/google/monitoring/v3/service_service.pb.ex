defmodule Google.Monitoring.V3.CreateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :service_id, 3, type: :string, json_name: "serviceId"
  field :service, 2, type: Google.Monitoring.V3.Service, deprecated: false
end

defmodule Google.Monitoring.V3.GetServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.ListServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Monitoring.V3.ListServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Monitoring.V3.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Monitoring.V3.UpdateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :service, 1, type: Google.Monitoring.V3.Service, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Monitoring.V3.DeleteServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.CreateServiceLevelObjectiveRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :service_level_objective_id, 3, type: :string, json_name: "serviceLevelObjectiveId"

  field :service_level_objective, 2,
    type: Google.Monitoring.V3.ServiceLevelObjective,
    json_name: "serviceLevelObjective",
    deprecated: false
end

defmodule Google.Monitoring.V3.GetServiceLevelObjectiveRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Monitoring.V3.ServiceLevelObjective.View, enum: true
end

defmodule Google.Monitoring.V3.ListServiceLevelObjectivesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :view, 5, type: Google.Monitoring.V3.ServiceLevelObjective.View, enum: true
end

defmodule Google.Monitoring.V3.ListServiceLevelObjectivesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :service_level_objectives, 1,
    repeated: true,
    type: Google.Monitoring.V3.ServiceLevelObjective,
    json_name: "serviceLevelObjectives"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Monitoring.V3.UpdateServiceLevelObjectiveRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :service_level_objective, 1,
    type: Google.Monitoring.V3.ServiceLevelObjective,
    json_name: "serviceLevelObjective",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Monitoring.V3.DeleteServiceLevelObjectiveRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.ServiceMonitoringService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.monitoring.v3.ServiceMonitoringService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateService, Google.Monitoring.V3.CreateServiceRequest, Google.Monitoring.V3.Service

  rpc :GetService, Google.Monitoring.V3.GetServiceRequest, Google.Monitoring.V3.Service

  rpc :ListServices,
      Google.Monitoring.V3.ListServicesRequest,
      Google.Monitoring.V3.ListServicesResponse

  rpc :UpdateService, Google.Monitoring.V3.UpdateServiceRequest, Google.Monitoring.V3.Service

  rpc :DeleteService, Google.Monitoring.V3.DeleteServiceRequest, Google.Protobuf.Empty

  rpc :CreateServiceLevelObjective,
      Google.Monitoring.V3.CreateServiceLevelObjectiveRequest,
      Google.Monitoring.V3.ServiceLevelObjective

  rpc :GetServiceLevelObjective,
      Google.Monitoring.V3.GetServiceLevelObjectiveRequest,
      Google.Monitoring.V3.ServiceLevelObjective

  rpc :ListServiceLevelObjectives,
      Google.Monitoring.V3.ListServiceLevelObjectivesRequest,
      Google.Monitoring.V3.ListServiceLevelObjectivesResponse

  rpc :UpdateServiceLevelObjective,
      Google.Monitoring.V3.UpdateServiceLevelObjectiveRequest,
      Google.Monitoring.V3.ServiceLevelObjective

  rpc :DeleteServiceLevelObjective,
      Google.Monitoring.V3.DeleteServiceLevelObjectiveRequest,
      Google.Protobuf.Empty
end

defmodule Google.Monitoring.V3.ServiceMonitoringService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Monitoring.V3.ServiceMonitoringService.Service
end