defmodule Google.Ads.Admanager.V1.Company do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  field :update_time, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :third_party_company_id, 16,
    type: :int64,
    json_name: "thirdPartyCompanyId",
    deprecated: false
end