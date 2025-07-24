defmodule Google.Ads.Datamanager.V1.TermsOfServiceStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TERMS_OF_SERVICE_STATUS_UNSPECIFIED, 0
  field :ACCEPTED, 1
  field :REJECTED, 2
end

defmodule Google.Ads.Datamanager.V1.TermsOfService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_match_terms_of_service_status, 1,
    type: Google.Ads.Datamanager.V1.TermsOfServiceStatus,
    json_name: "customerMatchTermsOfServiceStatus",
    enum: true,
    deprecated: false
end
