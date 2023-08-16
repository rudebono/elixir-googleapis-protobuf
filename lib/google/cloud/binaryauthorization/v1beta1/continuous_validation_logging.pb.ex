defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.PolicyConformanceVerdict do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :POLICY_CONFORMANCE_VERDICT_UNSPECIFIED, 0
  field :VIOLATES_POLICY, 1
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.AuditResult do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AUDIT_RESULT_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.CheckResult.CheckVerdict do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CHECK_VERDICT_UNSPECIFIED, 0
  field :NON_CONFORMANT, 1
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.CheckResult.CheckSetScope do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :scope, 0

  field :kubernetes_service_account, 1,
    type: :string,
    json_name: "kubernetesServiceAccount",
    oneof: 0

  field :kubernetes_namespace, 2, type: :string, json_name: "kubernetesNamespace", oneof: 0
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.CheckResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :check_set_index, 1, type: :string, json_name: "checkSetIndex"
  field :check_set_name, 2, type: :string, json_name: "checkSetName"

  field :check_set_scope, 3,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.CheckResult.CheckSetScope,
    json_name: "checkSetScope"

  field :check_index, 4, type: :string, json_name: "checkIndex"
  field :check_name, 5, type: :string, json_name: "checkName"
  field :check_type, 6, type: :string, json_name: "checkType"

  field :verdict, 7,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.CheckResult.CheckVerdict,
    enum: true

  field :explanation, 8, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :image, 1, type: :string

  field :result, 2,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.AuditResult,
    enum: true

  field :description, 3, type: :string

  field :check_results, 4,
    repeated: true,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.CheckResult,
    json_name: "checkResults"
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pod_namespace, 7, type: :string, json_name: "podNamespace"
  field :pod, 1, type: :string
  field :policy_name, 8, type: :string, json_name: "policyName"
  field :deploy_time, 2, type: Google.Protobuf.Timestamp, json_name: "deployTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :verdict, 4,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.PolicyConformanceVerdict,
    enum: true

  field :images, 5,
    repeated: true,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ConfigErrorEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :description, 1, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :event_type, 0

  field :pod_event, 1,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent,
    json_name: "podEvent",
    oneof: 0

  field :config_error_event, 4,
    type: Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ConfigErrorEvent,
    json_name: "configErrorEvent",
    oneof: 0
end