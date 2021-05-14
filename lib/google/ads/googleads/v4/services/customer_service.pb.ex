defmodule Google.Ads.Googleads.V4.Services.GetCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V4.Services.CustomerOperation.t() | nil,
          validate_only: boolean
        }

  defstruct [:customer_id, :operation, :validate_only]

  field :customer_id, 1, type: :string
  field :operation, 4, type: Google.Ads.Googleads.V4.Services.CustomerOperation
  field :validate_only, 5, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.CreateCustomerClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          customer_client: Google.Ads.Googleads.V4.Resources.Customer.t() | nil,
          email_address: Google.Protobuf.StringValue.t() | nil,
          access_role: Google.Ads.Googleads.V4.Enums.AccessRoleEnum.AccessRole.t()
        }

  defstruct [:customer_id, :customer_client, :email_address, :access_role]

  field :customer_id, 1, type: :string
  field :customer_client, 2, type: Google.Ads.Googleads.V4.Resources.Customer
  field :email_address, 3, type: Google.Protobuf.StringValue
  field :access_role, 4, type: Google.Ads.Googleads.V4.Enums.AccessRoleEnum.AccessRole, enum: true
end

defmodule Google.Ads.Googleads.V4.Services.CustomerOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update: Google.Ads.Googleads.V4.Resources.Customer.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:update, :update_mask]

  field :update, 1, type: Google.Ads.Googleads.V4.Resources.Customer
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Ads.Googleads.V4.Services.CreateCustomerClientResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          invitation_link: String.t()
        }

  defstruct [:resource_name, :invitation_link]

  field :resource_name, 2, type: :string
  field :invitation_link, 3, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V4.Services.MutateCustomerResult.t() | nil
        }

  defstruct [:result]

  field :result, 2, type: Google.Ads.Googleads.V4.Services.MutateCustomerResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateCustomerResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.ListAccessibleCustomersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Ads.Googleads.V4.Services.ListAccessibleCustomersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_names: [String.t()]
        }

  defstruct [:resource_names]

  field :resource_names, 1, repeated: true, type: :string
end
