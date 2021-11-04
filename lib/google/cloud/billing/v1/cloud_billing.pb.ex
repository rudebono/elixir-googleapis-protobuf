defmodule Google.Cloud.Billing.V1.BillingAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          open: boolean,
          display_name: String.t(),
          master_billing_account: String.t()
        }

  defstruct [:name, :open, :display_name, :master_billing_account]

  field :name, 1, type: :string
  field :open, 2, type: :bool
  field :display_name, 3, type: :string, json_name: "displayName"
  field :master_billing_account, 4, type: :string, json_name: "masterBillingAccount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.ProjectBillingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          billing_account_name: String.t(),
          billing_enabled: boolean
        }

  defstruct [:name, :project_id, :billing_account_name, :billing_enabled]

  field :name, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :billing_account_name, 3, type: :string, json_name: "billingAccountName"
  field :billing_enabled, 4, type: :bool, json_name: "billingEnabled"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.GetBillingAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.ListBillingAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:page_size, :page_token, :filter]

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :filter, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.ListBillingAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          billing_accounts: [Google.Cloud.Billing.V1.BillingAccount.t()],
          next_page_token: String.t()
        }

  defstruct [:billing_accounts, :next_page_token]

  field :billing_accounts, 1,
    repeated: true,
    type: Google.Cloud.Billing.V1.BillingAccount,
    json_name: "billingAccounts"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.CreateBillingAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          billing_account: Google.Cloud.Billing.V1.BillingAccount.t() | nil
        }

  defstruct [:billing_account]

  field :billing_account, 1,
    type: Google.Cloud.Billing.V1.BillingAccount,
    json_name: "billingAccount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.UpdateBillingAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          account: Google.Cloud.Billing.V1.BillingAccount.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :account, :update_mask]

  field :name, 1, type: :string
  field :account, 2, type: Google.Cloud.Billing.V1.BillingAccount
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.ListProjectBillingInfoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.ListProjectBillingInfoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_billing_info: [Google.Cloud.Billing.V1.ProjectBillingInfo.t()],
          next_page_token: String.t()
        }

  defstruct [:project_billing_info, :next_page_token]

  field :project_billing_info, 1,
    repeated: true,
    type: Google.Cloud.Billing.V1.ProjectBillingInfo,
    json_name: "projectBillingInfo"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.GetProjectBillingInfoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.UpdateProjectBillingInfoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_billing_info: Google.Cloud.Billing.V1.ProjectBillingInfo.t() | nil
        }

  defstruct [:name, :project_billing_info]

  field :name, 1, type: :string

  field :project_billing_info, 2,
    type: Google.Cloud.Billing.V1.ProjectBillingInfo,
    json_name: "projectBillingInfo"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.CloudBilling.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.billing.v1.CloudBilling"

  rpc :GetBillingAccount,
      Google.Cloud.Billing.V1.GetBillingAccountRequest,
      Google.Cloud.Billing.V1.BillingAccount

  rpc :ListBillingAccounts,
      Google.Cloud.Billing.V1.ListBillingAccountsRequest,
      Google.Cloud.Billing.V1.ListBillingAccountsResponse

  rpc :UpdateBillingAccount,
      Google.Cloud.Billing.V1.UpdateBillingAccountRequest,
      Google.Cloud.Billing.V1.BillingAccount

  rpc :CreateBillingAccount,
      Google.Cloud.Billing.V1.CreateBillingAccountRequest,
      Google.Cloud.Billing.V1.BillingAccount

  rpc :ListProjectBillingInfo,
      Google.Cloud.Billing.V1.ListProjectBillingInfoRequest,
      Google.Cloud.Billing.V1.ListProjectBillingInfoResponse

  rpc :GetProjectBillingInfo,
      Google.Cloud.Billing.V1.GetProjectBillingInfoRequest,
      Google.Cloud.Billing.V1.ProjectBillingInfo

  rpc :UpdateProjectBillingInfo,
      Google.Cloud.Billing.V1.UpdateProjectBillingInfoRequest,
      Google.Cloud.Billing.V1.ProjectBillingInfo

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Billing.V1.CloudBilling.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Billing.V1.CloudBilling.Service
end
