defmodule Google.Maps.Addressvalidation.V1.ProvideValidationFeedbackRequest.ValidationConclusion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :VALIDATION_CONCLUSION_UNSPECIFIED, 0
  field :VALIDATED_VERSION_USED, 1
  field :USER_VERSION_USED, 2
  field :UNVALIDATED_VERSION_USED, 3
  field :UNUSED, 4
end

defmodule Google.Maps.Addressvalidation.V1.Verdict.Granularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :GRANULARITY_UNSPECIFIED, 0
  field :SUB_PREMISE, 1
  field :PREMISE, 2
  field :PREMISE_PROXIMITY, 3
  field :BLOCK, 4
  field :ROUTE, 5
  field :OTHER, 6
end

defmodule Google.Maps.Addressvalidation.V1.ValidateAddressRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :address, 1, type: Google.Type.PostalAddress, deprecated: false
  field :previous_response_id, 2, type: :string, json_name: "previousResponseId"
  field :enable_usps_cass, 3, type: :bool, json_name: "enableUspsCass"
  field :session_token, 5, type: :string, json_name: "sessionToken", deprecated: false
end

defmodule Google.Maps.Addressvalidation.V1.ValidateAddressResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :result, 1, type: Google.Maps.Addressvalidation.V1.ValidationResult
  field :response_id, 2, type: :string, json_name: "responseId"
end

defmodule Google.Maps.Addressvalidation.V1.ProvideValidationFeedbackRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :conclusion, 1,
    type: Google.Maps.Addressvalidation.V1.ProvideValidationFeedbackRequest.ValidationConclusion,
    enum: true,
    deprecated: false

  field :response_id, 2, type: :string, json_name: "responseId", deprecated: false
end

defmodule Google.Maps.Addressvalidation.V1.ProvideValidationFeedbackResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Maps.Addressvalidation.V1.ValidationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :verdict, 1, type: Google.Maps.Addressvalidation.V1.Verdict
  field :address, 2, type: Google.Maps.Addressvalidation.V1.Address
  field :geocode, 3, type: Google.Maps.Addressvalidation.V1.Geocode
  field :metadata, 4, type: Google.Maps.Addressvalidation.V1.AddressMetadata
  field :usps_data, 5, type: Google.Maps.Addressvalidation.V1.UspsData, json_name: "uspsData"
end

defmodule Google.Maps.Addressvalidation.V1.Verdict do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :input_granularity, 1,
    type: Google.Maps.Addressvalidation.V1.Verdict.Granularity,
    json_name: "inputGranularity",
    enum: true

  field :validation_granularity, 2,
    type: Google.Maps.Addressvalidation.V1.Verdict.Granularity,
    json_name: "validationGranularity",
    enum: true

  field :geocode_granularity, 3,
    type: Google.Maps.Addressvalidation.V1.Verdict.Granularity,
    json_name: "geocodeGranularity",
    enum: true

  field :address_complete, 4, type: :bool, json_name: "addressComplete"
  field :has_unconfirmed_components, 5, type: :bool, json_name: "hasUnconfirmedComponents"
  field :has_inferred_components, 6, type: :bool, json_name: "hasInferredComponents"
  field :has_replaced_components, 7, type: :bool, json_name: "hasReplacedComponents"
end

defmodule Google.Maps.Addressvalidation.V1.AddressValidation.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.addressvalidation.v1.AddressValidation",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ValidateAddress,
      Google.Maps.Addressvalidation.V1.ValidateAddressRequest,
      Google.Maps.Addressvalidation.V1.ValidateAddressResponse

  rpc :ProvideValidationFeedback,
      Google.Maps.Addressvalidation.V1.ProvideValidationFeedbackRequest,
      Google.Maps.Addressvalidation.V1.ProvideValidationFeedbackResponse
end

defmodule Google.Maps.Addressvalidation.V1.AddressValidation.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Addressvalidation.V1.AddressValidation.Service
end
