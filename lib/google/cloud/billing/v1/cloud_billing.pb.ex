defmodule Google.Cloud.Billing.V1.BillingAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          open: boolean,
          display_name: String.t(),
          master_billing_account: String.t()
        }

  defstruct name: "",
            open: false,
            display_name: "",
            master_billing_account: ""

  field :name, 1, type: :string, deprecated: false
  field :open, 2, type: :bool, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
  field :master_billing_account, 4, type: :string, json_name: "masterBillingAccount"
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

  defstruct name: "",
            project_id: "",
            billing_account_name: "",
            billing_enabled: false

  field :name, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :billing_account_name, 3, type: :string, json_name: "billingAccountName"
  field :billing_enabled, 4, type: :bool, json_name: "billingEnabled"
end
defmodule Google.Cloud.Billing.V1.GetBillingAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Billing.V1.ListBillingAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct page_size: 0,
            page_token: "",
            filter: ""

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :filter, 3, type: :string
end
defmodule Google.Cloud.Billing.V1.ListBillingAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          billing_accounts: [Google.Cloud.Billing.V1.BillingAccount.t()],
          next_page_token: String.t()
        }

  defstruct billing_accounts: [],
            next_page_token: ""

  field :billing_accounts, 1,
    repeated: true,
    type: Google.Cloud.Billing.V1.BillingAccount,
    json_name: "billingAccounts"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Billing.V1.CreateBillingAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          billing_account: Google.Cloud.Billing.V1.BillingAccount.t() | nil
        }

  defstruct billing_account: nil

  field :billing_account, 1,
    type: Google.Cloud.Billing.V1.BillingAccount,
    json_name: "billingAccount",
    deprecated: false
end
defmodule Google.Cloud.Billing.V1.UpdateBillingAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          account: Google.Cloud.Billing.V1.BillingAccount.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            account: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :account, 2, type: Google.Cloud.Billing.V1.BillingAccount, deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Billing.V1.ListProjectBillingInfoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct name: "",
            page_size: 0,
            page_token: ""

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Billing.V1.ListProjectBillingInfoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_billing_info: [Google.Cloud.Billing.V1.ProjectBillingInfo.t()],
          next_page_token: String.t()
        }

  defstruct project_billing_info: [],
            next_page_token: ""

  field :project_billing_info, 1,
    repeated: true,
    type: Google.Cloud.Billing.V1.ProjectBillingInfo,
    json_name: "projectBillingInfo"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Billing.V1.GetProjectBillingInfoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Billing.V1.UpdateProjectBillingInfoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_billing_info: Google.Cloud.Billing.V1.ProjectBillingInfo.t() | nil
        }

  defstruct name: "",
            project_billing_info: nil

  field :name, 1, type: :string, deprecated: false

  field :project_billing_info, 2,
    type: Google.Cloud.Billing.V1.ProjectBillingInfo,
    json_name: "projectBillingInfo"
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
