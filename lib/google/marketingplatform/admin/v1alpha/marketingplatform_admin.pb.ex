defmodule Google.Marketingplatform.Admin.V1alpha.AnalyticsServiceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ANALYTICS_SERVICE_LEVEL_UNSPECIFIED, 0
  field :ANALYTICS_SERVICE_LEVEL_STANDARD, 1
  field :ANALYTICS_SERVICE_LEVEL_360, 2
end

defmodule Google.Marketingplatform.Admin.V1alpha.GetOrganizationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.ListAnalyticsAccountLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.ListAnalyticsAccountLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :analytics_account_links, 1,
    repeated: true,
    type: Google.Marketingplatform.Admin.V1alpha.AnalyticsAccountLink,
    json_name: "analyticsAccountLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Marketingplatform.Admin.V1alpha.CreateAnalyticsAccountLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :analytics_account_link, 2,
    type: Google.Marketingplatform.Admin.V1alpha.AnalyticsAccountLink,
    json_name: "analyticsAccountLink",
    deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.DeleteAnalyticsAccountLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Marketingplatform.Admin.V1alpha.SetPropertyServiceLevelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Marketingplatform.Admin.V1alpha.MarketingplatformAdminService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.marketingplatform.admin.v1alpha.MarketingplatformAdminService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetOrganization,
      Google.Marketingplatform.Admin.V1alpha.GetOrganizationRequest,
      Google.Marketingplatform.Admin.V1alpha.Organization

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
end

defmodule Google.Marketingplatform.Admin.V1alpha.MarketingplatformAdminService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Marketingplatform.Admin.V1alpha.MarketingplatformAdminService.Service
end