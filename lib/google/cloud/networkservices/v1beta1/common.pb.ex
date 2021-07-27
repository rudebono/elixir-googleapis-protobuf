defmodule Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabelMatchCriteria do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :METADATA_LABEL_MATCH_CRITERIA_UNSPECIFIED | :MATCH_ANY | :MATCH_ALL

  field :METADATA_LABEL_MATCH_CRITERIA_UNSPECIFIED, 0

  field :MATCH_ANY, 1

  field :MATCH_ALL, 2
end

defmodule Google.Cloud.Networkservices.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string
  field :requested_cancellation, 6, type: :bool
  field :api_version, 7, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.TrafficPortSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ports: [String.t()]
        }

  defstruct [:ports]

  field :ports, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabels do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_name: String.t(),
          label_value: String.t()
        }

  defstruct [:label_name, :label_value]

  field :label_name, 1, type: :string
  field :label_value, 2, type: :string
end

defmodule Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_label_match_criteria:
            Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabelMatchCriteria.t(),
          metadata_labels: [
            Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabels.t()
          ]
        }

  defstruct [:metadata_label_match_criteria, :metadata_labels]

  field :metadata_label_match_criteria, 1,
    type:
      Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabelMatchCriteria,
    enum: true

  field :metadata_labels, 2,
    repeated: true,
    type: Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabels
end

defmodule Google.Cloud.Networkservices.V1beta1.EndpointMatcher do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matcher_type: {atom, any}
        }

  defstruct [:matcher_type]

  oneof :matcher_type, 0

  field :metadata_label_matcher, 1,
    type: Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher,
    oneof: 0
end
