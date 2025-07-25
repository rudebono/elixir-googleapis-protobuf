defmodule Google.Ads.Googleads.V18.Services.MutateExperimentArmsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.ExperimentArmOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V18.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V18.Services.ExperimentArmOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V18.Resources.ExperimentArm, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V18.Resources.ExperimentArm, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.MutateExperimentArmsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.MutateExperimentArmResult
end

defmodule Google.Ads.Googleads.V18.Services.MutateExperimentArmResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :experiment_arm, 2,
    type: Google.Ads.Googleads.V18.Resources.ExperimentArm,
    json_name: "experimentArm"
end

defmodule Google.Ads.Googleads.V18.Services.ExperimentArmService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.ExperimentArmService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :MutateExperimentArms,
      Google.Ads.Googleads.V18.Services.MutateExperimentArmsRequest,
      Google.Ads.Googleads.V18.Services.MutateExperimentArmsResponse
end

defmodule Google.Ads.Googleads.V18.Services.ExperimentArmService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.ExperimentArmService.Service
end
