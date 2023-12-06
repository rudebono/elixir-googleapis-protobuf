defmodule Google.Cloud.Billing.V1.BillingAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :open, 2, type: :bool, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
  field :master_billing_account, 4, type: :string, json_name: "masterBillingAccount"
  field :parent, 6, type: :string, deprecated: false
end

defmodule Google.Cloud.Billing.V1.ProjectBillingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :project_id, 2, type: :string, json_name: "projectId", deprecated: false
  field :billing_account_name, 3, type: :string, json_name: "billingAccountName"
  field :billing_enabled, 4, type: :bool, json_name: "billingEnabled", deprecated: false
end

defmodule Google.Cloud.Billing.V1.GetBillingAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Billing.V1.ListBillingAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :filter, 3, type: :string
  field :parent, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Billing.V1.ListBillingAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :billing_accounts, 1,
    repeated: true,
    type: Google.Cloud.Billing.V1.BillingAccount,
    json_name: "billingAccounts"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Billing.V1.CreateBillingAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :billing_account, 1,
    type: Google.Cloud.Billing.V1.BillingAccount,
    json_name: "billingAccount",
    deprecated: false

  field :parent, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Billing.V1.UpdateBillingAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account, 2, type: Google.Cloud.Billing.V1.BillingAccount, deprecated: false
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Billing.V1.ListProjectBillingInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Billing.V1.ListProjectBillingInfoResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_billing_info, 1,
    repeated: true,
    type: Google.Cloud.Billing.V1.ProjectBillingInfo,
    json_name: "projectBillingInfo"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Billing.V1.GetProjectBillingInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Billing.V1.UpdateProjectBillingInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :project_billing_info, 2,
    type: Google.Cloud.Billing.V1.ProjectBillingInfo,
    json_name: "projectBillingInfo"
end

defmodule Google.Cloud.Billing.V1.MoveBillingAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :destination_parent, 2, type: :string, json_name: "destinationParent", deprecated: false
end

defmodule Google.Cloud.Billing.V1.CloudBilling.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.billing.v1.CloudBilling",
    protoc_gen_elixir_version: "0.12.0"

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

  rpc :MoveBillingAccount,
      Google.Cloud.Billing.V1.MoveBillingAccountRequest,
      Google.Cloud.Billing.V1.BillingAccount
end

defmodule Google.Cloud.Billing.V1.CloudBilling.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Billing.V1.CloudBilling.Service
end