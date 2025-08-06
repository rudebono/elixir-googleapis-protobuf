defmodule Google.Shopping.Merchant.Accounts.V1.AccountIssue.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :ERROR, 2
  field :SUGGESTION, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountIssue.ImpactedDestination.Impact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode"
  field :severity, 2, type: Google.Shopping.Merchant.Accounts.V1.AccountIssue.Severity, enum: true
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountIssue.ImpactedDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reporting_context, 1,
    proto3_optional: true,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true

  field :impacts, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.AccountIssue.ImpactedDestination.Impact
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :title, 2, type: :string
  field :severity, 3, type: Google.Shopping.Merchant.Accounts.V1.AccountIssue.Severity, enum: true

  field :impacted_destinations, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.AccountIssue.ImpactedDestination,
    json_name: "impactedDestinations"

  field :detail, 5, type: :string
  field :documentation_uri, 6, type: :string, json_name: "documentationUri"
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListAccountIssuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
  field :time_zone, 5, type: :string, json_name: "timeZone", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListAccountIssuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_issues, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.AccountIssue,
    json_name: "accountIssues"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountIssueService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.AccountIssueService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListAccountIssues,
      Google.Shopping.Merchant.Accounts.V1.ListAccountIssuesRequest,
      Google.Shopping.Merchant.Accounts.V1.ListAccountIssuesResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountIssueService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.AccountIssueService.Service
end
