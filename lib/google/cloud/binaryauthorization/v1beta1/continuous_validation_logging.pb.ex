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

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :image, 1, type: :string

  field :result, 2,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.AuditResult,
    enum: true

  field :description, 3, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pod_namespace, 7, type: :string, json_name: "podNamespace"
  field :pod, 1, type: :string
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

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.UnsupportedPolicyEvent do
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

  field :unsupported_policy_event, 2,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.UnsupportedPolicyEvent,
    json_name: "unsupportedPolicyEvent",
    oneof: 0
end