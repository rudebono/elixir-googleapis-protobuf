defmodule Google.Ads.Admanager.V1.Company do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :company_id, 2, type: :int64, json_name: "companyId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :type, 4,
    type: Google.Ads.Admanager.V1.CompanyTypeEnum.CompanyType,
    enum: true,
    deprecated: false

  field :address, 5, type: :string, deprecated: false
  field :email, 6, type: :string, deprecated: false
  field :fax, 7, type: :string, deprecated: false
  field :phone, 8, type: :string, deprecated: false
  field :external_id, 9, type: :string, json_name: "externalId", deprecated: false
  field :comment, 10, type: :string, deprecated: false

  field :credit_status, 11,
    type: Google.Ads.Admanager.V1.CompanyCreditStatusEnum.CompanyCreditStatus,
    json_name: "creditStatus",
    enum: true,
    deprecated: false

  field :applied_labels, 12,
    repeated: true,
    type: Google.Ads.Admanager.V1.AppliedLabel,
    json_name: "appliedLabels",
    deprecated: false

  field :primary_contact, 13,
    proto3_optional: true,
    type: :string,
    json_name: "primaryContact",
    deprecated: false

  field :applied_teams, 14,
    repeated: true,
    type: :string,
    json_name: "appliedTeams",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.GetCompanyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCompaniesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCompaniesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :companies, 1, repeated: true, type: Google.Ads.Admanager.V1.Company
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CompanyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.CompanyService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetCompany, Google.Ads.Admanager.V1.GetCompanyRequest, Google.Ads.Admanager.V1.Company

  rpc :ListCompanies,
      Google.Ads.Admanager.V1.ListCompaniesRequest,
      Google.Ads.Admanager.V1.ListCompaniesResponse
end

defmodule Google.Ads.Admanager.V1.CompanyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.CompanyService.Service
end