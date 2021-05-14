defmodule Google.Ads.Googleads.V4.Services.CreateOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          job: Google.Ads.Googleads.V4.Resources.OfflineUserDataJob.t() | nil
        }

  defstruct [:customer_id, :job]

  field :customer_id, 1, type: :string
  field :job, 2, type: Google.Ads.Googleads.V4.Resources.OfflineUserDataJob
end

defmodule Google.Ads.Googleads.V4.Services.CreateOfflineUserDataJobResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.GetOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.RunOfflineUserDataJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.AddOfflineUserDataJobOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          enable_partial_failure: Google.Protobuf.BoolValue.t() | nil,
          operations: [Google.Ads.Googleads.V4.Services.OfflineUserDataJobOperation.t()]
        }

  defstruct [:resource_name, :enable_partial_failure, :operations]

  field :resource_name, 1, type: :string
  field :enable_partial_failure, 2, type: Google.Protobuf.BoolValue

  field :operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.OfflineUserDataJobOperation
end

defmodule Google.Ads.Googleads.V4.Services.OfflineUserDataJobOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V4.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V4.Common.UserData, oneof: 0
  field :remove_all, 3, type: :bool, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.AddOfflineUserDataJobOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:partial_failure_error]

  field :partial_failure_error, 1, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V4.Services.OfflineUserDataJobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.OfflineUserDataJobService"

  rpc :CreateOfflineUserDataJob,
      Google.Ads.Googleads.V4.Services.CreateOfflineUserDataJobRequest,
      Google.Ads.Googleads.V4.Services.CreateOfflineUserDataJobResponse

  rpc :GetOfflineUserDataJob,
      Google.Ads.Googleads.V4.Services.GetOfflineUserDataJobRequest,
      Google.Ads.Googleads.V4.Resources.OfflineUserDataJob

  rpc :AddOfflineUserDataJobOperations,
      Google.Ads.Googleads.V4.Services.AddOfflineUserDataJobOperationsRequest,
      Google.Ads.Googleads.V4.Services.AddOfflineUserDataJobOperationsResponse

  rpc :RunOfflineUserDataJob,
      Google.Ads.Googleads.V4.Services.RunOfflineUserDataJobRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ads.Googleads.V4.Services.OfflineUserDataJobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.OfflineUserDataJobService.Service
end
