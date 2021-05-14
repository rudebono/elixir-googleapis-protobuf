defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.PolicyConformanceVerdict do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :POLICY_CONFORMANCE_VERDICT_UNSPECIFIED | :VIOLATES_POLICY

  field :POLICY_CONFORMANCE_VERDICT_UNSPECIFIED, 0

  field :VIOLATES_POLICY, 1
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.AuditResult do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AUDIT_RESULT_UNSPECIFIED | :ALLOW | :DENY

  field :AUDIT_RESULT_UNSPECIFIED, 0

  field :ALLOW, 1

  field :DENY, 2
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: String.t(),
          result:
            Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.AuditResult.t(),
          description: String.t()
        }

  defstruct [:image, :result, :description]

  field :image, 1, type: :string

  field :result, 2,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.AuditResult,
    enum: true

  field :description, 3, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pod: String.t(),
          deploy_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          verdict:
            Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.PolicyConformanceVerdict.t(),
          images: [
            Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent.ImageDetails.t()
          ]
        }

  defstruct [:pod, :deploy_time, :end_time, :verdict, :images]

  field :pod, 1, type: :string
  field :deploy_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t()
        }

  defstruct [:description]

  field :description, 1, type: :string
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_type: {atom, any}
        }

  defstruct [:event_type]

  oneof :event_type, 0

  field :pod_event, 1,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.ContinuousValidationPodEvent,
    oneof: 0

  field :unsupported_policy_event, 2,
    type:
      Google.Cloud.Binaryauthorization.V1beta1.ContinuousValidationEvent.UnsupportedPolicyEvent,
    oneof: 0
end
