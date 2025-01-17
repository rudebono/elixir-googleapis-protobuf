defmodule Google.Ads.Admanager.V1.GetCompanyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCompaniesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCompaniesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :companies, 1, repeated: true, type: Google.Ads.Admanager.V1.Company
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CompanyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.CompanyService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetCompany, Google.Ads.Admanager.V1.GetCompanyRequest, Google.Ads.Admanager.V1.Company

  rpc :ListCompanies,
      Google.Ads.Admanager.V1.ListCompaniesRequest,
      Google.Ads.Admanager.V1.ListCompaniesResponse
end

defmodule Google.Ads.Admanager.V1.CompanyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.CompanyService.Service
end
