defmodule Google.Ads.Admanager.V1.CompanyTypeEnum.CompanyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMPANY_TYPE_UNSPECIFIED, 0
  field :ADVERTISER, 1
  field :HOUSE_ADVERTISER, 2
  field :AGENCY, 3
  field :HOUSE_AGENCY, 4
  field :AD_NETWORK, 5
  field :VIEWABILITY_PROVIDER, 6
end

defmodule Google.Ads.Admanager.V1.CompanyTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end