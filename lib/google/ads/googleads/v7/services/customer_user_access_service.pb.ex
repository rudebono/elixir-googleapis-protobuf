defmodule Google.Ads.Googleads.V7.Services.GetCustomerUserAccessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerUserAccessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V7.Services.CustomerUserAccessOperation.t() | nil
        }

  defstruct [:customer_id, :operation]

  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V7.Services.CustomerUserAccessOperation
end

defmodule Google.Ads.Googleads.V7.Services.CustomerUserAccessOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :update, 1, type: Google.Ads.Googleads.V7.Resources.CustomerUserAccess, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerUserAccessResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V7.Services.MutateCustomerUserAccessResult.t() | nil
        }

  defstruct [:result]

  field :result, 1, type: Google.Ads.Googleads.V7.Services.MutateCustomerUserAccessResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomerUserAccessResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end
