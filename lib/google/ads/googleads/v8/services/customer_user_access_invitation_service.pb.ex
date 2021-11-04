defmodule Google.Ads.Googleads.V8.Services.GetCustomerUserAccessInvitationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation:
            Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationOperation.t() | nil
        }

  defstruct [:customer_id, :operation]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operation, 2,
    type: Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationOperation

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V8.Resources.CustomerUserAccessInvitation.t() | nil}
            | {:remove, String.t()}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8.Resources.CustomerUserAccessInvitation, oneof: 0
  field :remove, 2, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result:
            Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationResult.t() | nil
        }

  defstruct [:result]

  field :result, 1,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomerUserAccessInvitationService"

  rpc :GetCustomerUserAccessInvitation,
      Google.Ads.Googleads.V8.Services.GetCustomerUserAccessInvitationRequest,
      Google.Ads.Googleads.V8.Resources.CustomerUserAccessInvitation

  rpc :MutateCustomerUserAccessInvitation,
      Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomerUserAccessInvitationResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.CustomerUserAccessInvitationService.Service
end
