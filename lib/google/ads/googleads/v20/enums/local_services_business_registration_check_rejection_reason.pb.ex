defmodule Google.Ads.Googleads.V20.Enums.LocalServicesBusinessRegistrationCheckRejectionReasonEnum.LocalServicesBusinessRegistrationCheckRejectionReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BUSINESS_NAME_MISMATCH, 2
  field :BUSINESS_DETAILS_MISMATCH, 3
  field :ID_NOT_FOUND, 4
  field :POOR_DOCUMENT_IMAGE_QUALITY, 5
  field :DOCUMENT_EXPIRED, 6
  field :DOCUMENT_INVALID, 7
  field :DOCUMENT_TYPE_MISMATCH, 8
  field :DOCUMENT_UNVERIFIABLE, 9
  field :OTHER, 10
end

defmodule Google.Ads.Googleads.V20.Enums.LocalServicesBusinessRegistrationCheckRejectionReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
