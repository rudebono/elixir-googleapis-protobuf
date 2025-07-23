defmodule Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus.ItemLevelIssue.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :NOT_IMPACTED, 1
  field :DEMOTED, 2
  field :DISAPPROVED, 3
end

defmodule Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus.ItemLevelIssue.Resolution do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESOLUTION_UNSPECIFIED, 0
  field :MERCHANT_ACTION, 1
  field :PENDING_PROCESSING, 2
end

defmodule Google.Shopping.Merchant.Issueresolution.V1beta.ListAggregateProductStatusesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Issueresolution.V1beta.ListAggregateProductStatusesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aggregate_product_statuses, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus,
    json_name: "aggregateProductStatuses"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus.Stats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :active_count, 1, type: :int64, json_name: "activeCount"
  field :pending_count, 2, type: :int64, json_name: "pendingCount"
  field :disapproved_count, 3, type: :int64, json_name: "disapprovedCount"
  field :expiring_count, 4, type: :int64, json_name: "expiringCount"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus.ItemLevelIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: :string

  field :severity, 2,
    type:
      Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus.ItemLevelIssue.Severity,
    enum: true

  field :resolution, 3,
    type:
      Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus.ItemLevelIssue.Resolution,
    enum: true

  field :attribute, 4, type: :string
  field :description, 6, type: :string
  field :detail, 7, type: :string
  field :documentation_uri, 8, type: :string, json_name: "documentationUri"
  field :product_count, 9, type: :int64, json_name: "productCount"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :reporting_context, 3,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true

  field :country, 4, type: :string

  field :stats, 5,
    type: Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus.Stats

  field :item_level_issues, 6,
    repeated: true,
    type: Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatus.ItemLevelIssue,
    json_name: "itemLevelIssues"
end

defmodule Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatusesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.issueresolution.v1beta.AggregateProductStatusesService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListAggregateProductStatuses,
      Google.Shopping.Merchant.Issueresolution.V1beta.ListAggregateProductStatusesRequest,
      Google.Shopping.Merchant.Issueresolution.V1beta.ListAggregateProductStatusesResponse
end

defmodule Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatusesService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service:
      Google.Shopping.Merchant.Issueresolution.V1beta.AggregateProductStatusesService.Service
end
