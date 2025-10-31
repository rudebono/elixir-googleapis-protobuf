defmodule Google.Marketingplatform.Admin.V1alpha.GetOrganizationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.ListOrganizationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.ListOrganizationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :organizations, 1,
    repeated: true,
    type: Google.Marketingplatform.Admin.V1alpha.Organization

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Marketingplatform.Admin.V1alpha.FindSalesPartnerManagedClientsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :organization, 1, type: :string, deprecated: false
  field :is_active, 2, type: :bool, json_name: "isActive", deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.FindSalesPartnerManagedClientsResponse.ClientData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :organization, 1, type: Google.Marketingplatform.Admin.V1alpha.Organization
  field :start_date, 2, type: Google.Type.Date, json_name: "startDate"
  field :end_date, 3, type: Google.Type.Date, json_name: "endDate"
end

defmodule Google.Marketingplatform.Admin.V1alpha.FindSalesPartnerManagedClientsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :client_data, 1,
    repeated: true,
    type:
      Google.Marketingplatform.Admin.V1alpha.FindSalesPartnerManagedClientsResponse.ClientData,
    json_name: "clientData"
end

defmodule Google.Marketingplatform.Admin.V1alpha.ListAnalyticsAccountLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.ListAnalyticsAccountLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :analytics_account_links, 1,
    repeated: true,
    type: Google.Marketingplatform.Admin.V1alpha.AnalyticsAccountLink,
    json_name: "analyticsAccountLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Marketingplatform.Admin.V1alpha.CreateAnalyticsAccountLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :analytics_account_link, 2,
    type: Google.Marketingplatform.Admin.V1alpha.AnalyticsAccountLink,
    json_name: "analyticsAccountLink",
    deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.DeleteAnalyticsAccountLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.SetPropertyServiceLevelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :analytics_account_link, 1,
    type: :string,
    json_name: "analyticsAccountLink",
    deprecated: false

  field :analytics_property, 2, type: :string, json_name: "analyticsProperty", deprecated: false

  field :service_level, 3,
    type: Google.Marketingplatform.Admin.V1alpha.AnalyticsServiceLevel,
    json_name: "serviceLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.SetPropertyServiceLevelResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Marketingplatform.Admin.V1alpha.ReportPropertyUsageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :organization, 1, type: :string, deprecated: false
  field :month, 2, type: :string, deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.ReportPropertyUsageResponse.PropertyUsage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :property, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :account_id, 3, type: :int64, json_name: "accountId"

  field :service_level, 4,
    type: Google.Marketingplatform.Admin.V1alpha.AnalyticsServiceLevel,
    json_name: "serviceLevel",
    enum: true

  field :property_type, 5,
    type: Google.Marketingplatform.Admin.V1alpha.AnalyticsPropertyType,
    json_name: "propertyType",
    enum: true

  field :total_event_count, 6, type: :int64, json_name: "totalEventCount"
  field :billable_event_count, 7, type: :int64, json_name: "billableEventCount"
end

defmodule Google.Marketingplatform.Admin.V1alpha.ReportPropertyUsageResponse.BillInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :base_fee, 1, type: Google.Type.Money, json_name: "baseFee"
  field :event_fee, 2, type: Google.Type.Money, json_name: "eventFee"
  field :price_protection_credit, 3, type: Google.Type.Money, json_name: "priceProtectionCredit"
  field :total, 4, type: Google.Type.Money
end

defmodule Google.Marketingplatform.Admin.V1alpha.ReportPropertyUsageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :property_usages, 1,
    repeated: true,
    type: Google.Marketingplatform.Admin.V1alpha.ReportPropertyUsageResponse.PropertyUsage,
    json_name: "propertyUsages"

  field :bill_info, 2,
    type: Google.Marketingplatform.Admin.V1alpha.ReportPropertyUsageResponse.BillInfo,
    json_name: "billInfo"
end

defmodule Google.Marketingplatform.Admin.V1alpha.MarketingplatformAdminService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.marketingplatform.admin.v1alpha.MarketingplatformAdminService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetOrganization,
      Google.Marketingplatform.Admin.V1alpha.GetOrganizationRequest,
      Google.Marketingplatform.Admin.V1alpha.Organization

  rpc :ListOrganizations,
      Google.Marketingplatform.Admin.V1alpha.ListOrganizationsRequest,
      Google.Marketingplatform.Admin.V1alpha.ListOrganizationsResponse

  rpc :FindSalesPartnerManagedClients,
      Google.Marketingplatform.Admin.V1alpha.FindSalesPartnerManagedClientsRequest,
      Google.Marketingplatform.Admin.V1alpha.FindSalesPartnerManagedClientsResponse

  rpc :ListAnalyticsAccountLinks,
      Google.Marketingplatform.Admin.V1alpha.ListAnalyticsAccountLinksRequest,
      Google.Marketingplatform.Admin.V1alpha.ListAnalyticsAccountLinksResponse

  rpc :CreateAnalyticsAccountLink,
      Google.Marketingplatform.Admin.V1alpha.CreateAnalyticsAccountLinkRequest,
      Google.Marketingplatform.Admin.V1alpha.AnalyticsAccountLink

  rpc :DeleteAnalyticsAccountLink,
      Google.Marketingplatform.Admin.V1alpha.DeleteAnalyticsAccountLinkRequest,
      Google.Protobuf.Empty

  rpc :SetPropertyServiceLevel,
      Google.Marketingplatform.Admin.V1alpha.SetPropertyServiceLevelRequest,
      Google.Marketingplatform.Admin.V1alpha.SetPropertyServiceLevelResponse

  rpc :ReportPropertyUsage,
      Google.Marketingplatform.Admin.V1alpha.ReportPropertyUsageRequest,
      Google.Marketingplatform.Admin.V1alpha.ReportPropertyUsageResponse
end

defmodule Google.Marketingplatform.Admin.V1alpha.MarketingplatformAdminService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Marketingplatform.Admin.V1alpha.MarketingplatformAdminService.Service
end
