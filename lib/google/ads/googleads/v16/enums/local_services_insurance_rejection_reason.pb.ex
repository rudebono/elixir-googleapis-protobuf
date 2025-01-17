defmodule Google.Ads.Googleads.V16.Enums.LocalServicesInsuranceRejectionReasonEnum.LocalServicesInsuranceRejectionReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BUSINESS_NAME_MISMATCH, 2
  field :INSURANCE_AMOUNT_INSUFFICIENT, 3
  field :EXPIRED, 4
  field :NO_SIGNATURE, 5
  field :NO_POLICY_NUMBER, 6
  field :NO_COMMERCIAL_GENERAL_LIABILITY, 7
  field :EDITABLE_FORMAT, 8
  field :CATEGORY_MISMATCH, 9
  field :MISSING_EXPIRATION_DATE, 10
  field :POOR_QUALITY, 11
  field :POTENTIALLY_EDITED, 12
  field :WRONG_DOCUMENT_TYPE, 13
  field :NON_FINAL, 14
  field :OTHER, 15
end

defmodule Google.Ads.Googleads.V16.Enums.LocalServicesInsuranceRejectionReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
