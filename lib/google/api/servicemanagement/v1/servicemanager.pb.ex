defmodule Google.Api.Servicemanagement.V1.GetServiceConfigRequest.ConfigView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIC | :FULL

  field :BASIC, 0

  field :FULL, 1
end

defmodule Google.Api.Servicemanagement.V1.ListServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          producer_project_id: String.t(),
          page_size: integer,
          page_token: String.t(),
          consumer_id: String.t()
        }

  defstruct [:producer_project_id, :page_size, :page_token, :consumer_id]

  field :producer_project_id, 1, type: :string
  field :page_size, 5, type: :int32
  field :page_token, 6, type: :string
  field :consumer_id, 7, type: :string, deprecated: true
end

defmodule Google.Api.Servicemanagement.V1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Api.Servicemanagement.V1.ManagedService.t()],
          next_page_token: String.t()
        }

  defstruct [:services, :next_page_token]

  field :services, 1, repeated: true, type: Google.Api.Servicemanagement.V1.ManagedService
  field :next_page_token, 2, type: :string
end

defmodule Google.Api.Servicemanagement.V1.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t()
        }

  defstruct [:service_name]

  field :service_name, 1, type: :string
end

defmodule Google.Api.Servicemanagement.V1.CreateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Api.Servicemanagement.V1.ManagedService.t() | nil
        }

  defstruct [:service]

  field :service, 1, type: Google.Api.Servicemanagement.V1.ManagedService
end

defmodule Google.Api.Servicemanagement.V1.DeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t()
        }

  defstruct [:service_name]

  field :service_name, 1, type: :string
end

defmodule Google.Api.Servicemanagement.V1.UndeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t()
        }

  defstruct [:service_name]

  field :service_name, 1, type: :string
end

defmodule Google.Api.Servicemanagement.V1.UndeleteServiceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Api.Servicemanagement.V1.ManagedService.t() | nil
        }

  defstruct [:service]

  field :service, 1, type: Google.Api.Servicemanagement.V1.ManagedService
end

defmodule Google.Api.Servicemanagement.V1.GetServiceConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          config_id: String.t(),
          view: Google.Api.Servicemanagement.V1.GetServiceConfigRequest.ConfigView.t()
        }

  defstruct [:service_name, :config_id, :view]

  field :service_name, 1, type: :string
  field :config_id, 2, type: :string

  field :view, 3,
    type: Google.Api.Servicemanagement.V1.GetServiceConfigRequest.ConfigView,
    enum: true
end

defmodule Google.Api.Servicemanagement.V1.ListServiceConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:service_name, :page_token, :page_size]

  field :service_name, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Api.Servicemanagement.V1.ListServiceConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_configs: [Google.Api.Service.t()],
          next_page_token: String.t()
        }

  defstruct [:service_configs, :next_page_token]

  field :service_configs, 1, repeated: true, type: Google.Api.Service
  field :next_page_token, 2, type: :string
end

defmodule Google.Api.Servicemanagement.V1.CreateServiceConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          service_config: Google.Api.Service.t() | nil
        }

  defstruct [:service_name, :service_config]

  field :service_name, 1, type: :string
  field :service_config, 2, type: Google.Api.Service
end

defmodule Google.Api.Servicemanagement.V1.SubmitConfigSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          config_source: Google.Api.Servicemanagement.V1.ConfigSource.t() | nil,
          validate_only: boolean
        }

  defstruct [:service_name, :config_source, :validate_only]

  field :service_name, 1, type: :string
  field :config_source, 2, type: Google.Api.Servicemanagement.V1.ConfigSource
  field :validate_only, 3, type: :bool
end

defmodule Google.Api.Servicemanagement.V1.SubmitConfigSourceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_config: Google.Api.Service.t() | nil
        }

  defstruct [:service_config]

  field :service_config, 1, type: Google.Api.Service
end

defmodule Google.Api.Servicemanagement.V1.CreateServiceRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          rollout: Google.Api.Servicemanagement.V1.Rollout.t() | nil
        }

  defstruct [:service_name, :rollout]

  field :service_name, 1, type: :string
  field :rollout, 2, type: Google.Api.Servicemanagement.V1.Rollout
end

defmodule Google.Api.Servicemanagement.V1.ListServiceRolloutsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          page_token: String.t(),
          page_size: integer,
          filter: String.t()
        }

  defstruct [:service_name, :page_token, :page_size, :filter]

  field :service_name, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
  field :filter, 4, type: :string
end

defmodule Google.Api.Servicemanagement.V1.ListServiceRolloutsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rollouts: [Google.Api.Servicemanagement.V1.Rollout.t()],
          next_page_token: String.t()
        }

  defstruct [:rollouts, :next_page_token]

  field :rollouts, 1, repeated: true, type: Google.Api.Servicemanagement.V1.Rollout
  field :next_page_token, 2, type: :string
end

defmodule Google.Api.Servicemanagement.V1.GetServiceRolloutRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          rollout_id: String.t()
        }

  defstruct [:service_name, :rollout_id]

  field :service_name, 1, type: :string
  field :rollout_id, 2, type: :string
end

defmodule Google.Api.Servicemanagement.V1.EnableServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          consumer_id: String.t()
        }

  defstruct [:service_name, :consumer_id]

  field :service_name, 1, type: :string
  field :consumer_id, 2, type: :string
end

defmodule Google.Api.Servicemanagement.V1.EnableServiceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Api.Servicemanagement.V1.DisableServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          consumer_id: String.t()
        }

  defstruct [:service_name, :consumer_id]

  field :service_name, 1, type: :string
  field :consumer_id, 2, type: :string
end

defmodule Google.Api.Servicemanagement.V1.DisableServiceResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Api.Servicemanagement.V1.GenerateConfigReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          new_config: Google.Protobuf.Any.t() | nil,
          old_config: Google.Protobuf.Any.t() | nil
        }

  defstruct [:new_config, :old_config]

  field :new_config, 1, type: Google.Protobuf.Any
  field :old_config, 2, type: Google.Protobuf.Any
end

defmodule Google.Api.Servicemanagement.V1.GenerateConfigReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          id: String.t(),
          change_reports: [Google.Api.Servicemanagement.V1.ChangeReport.t()],
          diagnostics: [Google.Api.Servicemanagement.V1.Diagnostic.t()]
        }

  defstruct [:service_name, :id, :change_reports, :diagnostics]

  field :service_name, 1, type: :string
  field :id, 2, type: :string
  field :change_reports, 3, repeated: true, type: Google.Api.Servicemanagement.V1.ChangeReport
  field :diagnostics, 4, repeated: true, type: Google.Api.Servicemanagement.V1.Diagnostic
end
