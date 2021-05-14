defmodule Google.Monitoring.V3.CreateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_id: String.t(),
          service: Google.Monitoring.V3.Service.t() | nil
        }

  defstruct [:parent, :service_id, :service]

  field :parent, 1, type: :string
  field :service_id, 3, type: :string
  field :service, 2, type: Google.Monitoring.V3.Service
end

defmodule Google.Monitoring.V3.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Monitoring.V3.ListServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Monitoring.V3.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Monitoring.V3.Service.t()],
          next_page_token: String.t()
        }

  defstruct [:services, :next_page_token]

  field :services, 1, repeated: true, type: Google.Monitoring.V3.Service
  field :next_page_token, 2, type: :string
end

defmodule Google.Monitoring.V3.UpdateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Monitoring.V3.Service.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:service, :update_mask]

  field :service, 1, type: Google.Monitoring.V3.Service
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Monitoring.V3.DeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Monitoring.V3.CreateServiceLevelObjectiveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_level_objective_id: String.t(),
          service_level_objective: Google.Monitoring.V3.ServiceLevelObjective.t() | nil
        }

  defstruct [:parent, :service_level_objective_id, :service_level_objective]

  field :parent, 1, type: :string
  field :service_level_objective_id, 3, type: :string
  field :service_level_objective, 2, type: Google.Monitoring.V3.ServiceLevelObjective
end

defmodule Google.Monitoring.V3.GetServiceLevelObjectiveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Monitoring.V3.ServiceLevelObjective.View.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Monitoring.V3.ServiceLevelObjective.View, enum: true
end

defmodule Google.Monitoring.V3.ListServiceLevelObjectivesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Monitoring.V3.ServiceLevelObjective.View.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token, :view]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :view, 5, type: Google.Monitoring.V3.ServiceLevelObjective.View, enum: true
end

defmodule Google.Monitoring.V3.ListServiceLevelObjectivesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_level_objectives: [Google.Monitoring.V3.ServiceLevelObjective.t()],
          next_page_token: String.t()
        }

  defstruct [:service_level_objectives, :next_page_token]

  field :service_level_objectives, 1,
    repeated: true,
    type: Google.Monitoring.V3.ServiceLevelObjective

  field :next_page_token, 2, type: :string
end

defmodule Google.Monitoring.V3.UpdateServiceLevelObjectiveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_level_objective: Google.Monitoring.V3.ServiceLevelObjective.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:service_level_objective, :update_mask]

  field :service_level_objective, 1, type: Google.Monitoring.V3.ServiceLevelObjective
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Monitoring.V3.DeleteServiceLevelObjectiveRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Monitoring.V3.ServiceMonitoringService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.monitoring.v3.ServiceMonitoringService"

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
