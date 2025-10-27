defmodule Google.Ads.Admanager.V1.GetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sites, 1, repeated: true, type: Google.Ads.Admanager.V1.Site
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreateSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :site, 2, type: Google.Ads.Admanager.V1.Site, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreateSiteRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sites, 1, repeated: true, type: Google.Ads.Admanager.V1.Site
end

defmodule Google.Ads.Admanager.V1.UpdateSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :site, 1, type: Google.Ads.Admanager.V1.Site, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.UpdateSiteRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sites, 1, repeated: true, type: Google.Ads.Admanager.V1.Site
end

defmodule Google.Ads.Admanager.V1.BatchDeactivateSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchDeactivateSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.BatchSubmitSitesForApprovalRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchSubmitSitesForApprovalResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.SiteService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.SiteService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetSite, Google.Ads.Admanager.V1.GetSiteRequest, Google.Ads.Admanager.V1.Site

  rpc :ListSites,
      Google.Ads.Admanager.V1.ListSitesRequest,
      Google.Ads.Admanager.V1.ListSitesResponse

  rpc :CreateSite, Google.Ads.Admanager.V1.CreateSiteRequest, Google.Ads.Admanager.V1.Site

  rpc :BatchCreateSites,
      Google.Ads.Admanager.V1.BatchCreateSitesRequest,
      Google.Ads.Admanager.V1.BatchCreateSitesResponse

  rpc :UpdateSite, Google.Ads.Admanager.V1.UpdateSiteRequest, Google.Ads.Admanager.V1.Site

  rpc :BatchUpdateSites,
      Google.Ads.Admanager.V1.BatchUpdateSitesRequest,
      Google.Ads.Admanager.V1.BatchUpdateSitesResponse

  rpc :BatchDeactivateSites,
      Google.Ads.Admanager.V1.BatchDeactivateSitesRequest,
      Google.Ads.Admanager.V1.BatchDeactivateSitesResponse

  rpc :BatchSubmitSitesForApproval,
      Google.Ads.Admanager.V1.BatchSubmitSitesForApprovalRequest,
      Google.Ads.Admanager.V1.BatchSubmitSitesForApprovalResponse
end

defmodule Google.Ads.Admanager.V1.SiteService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.SiteService.Service
end
