defmodule Google.Cloud.Networkservices.V1.EndpointMatcher.MetadataLabelMatcher.MetadataLabelMatchCriteria do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :METADATA_LABEL_MATCH_CRITERIA_UNSPECIFIED | :MATCH_ANY | :MATCH_ALL

  field :METADATA_LABEL_MATCH_CRITERIA_UNSPECIFIED, 0
  field :MATCH_ANY, 1
  field :MATCH_ALL, 2
end
defmodule Google.Cloud.Networkservices.V1.OperationMetadata do
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

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Cloud.Networkservices.V1.TrafficPortSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ports: [String.t()]
        }

  defstruct ports: []

  field :ports, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Networkservices.V1.EndpointMatcher.MetadataLabelMatcher.MetadataLabels do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label_name: String.t(),
          label_value: String.t()
        }

  defstruct label_name: "",
            label_value: ""

  field :label_name, 1, type: :string, json_name: "labelName", deprecated: false
  field :label_value, 2, type: :string, json_name: "labelValue", deprecated: false
end
defmodule Google.Cloud.Networkservices.V1.EndpointMatcher.MetadataLabelMatcher do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_label_match_criteria:
            Google.Cloud.Networkservices.V1.EndpointMatcher.MetadataLabelMatcher.MetadataLabelMatchCriteria.t(),
          metadata_labels: [
            Google.Cloud.Networkservices.V1.EndpointMatcher.MetadataLabelMatcher.MetadataLabels.t()
          ]
        }

  defstruct metadata_label_match_criteria: :METADATA_LABEL_MATCH_CRITERIA_UNSPECIFIED,
            metadata_labels: []

  field :metadata_label_match_criteria, 1,
    type:
      Google.Cloud.Networkservices.V1.EndpointMatcher.MetadataLabelMatcher.MetadataLabelMatchCriteria,
    json_name: "metadataLabelMatchCriteria",
    enum: true

  field :metadata_labels, 2,
    repeated: true,
    type: Google.Cloud.Networkservices.V1.EndpointMatcher.MetadataLabelMatcher.MetadataLabels,
    json_name: "metadataLabels"
end
defmodule Google.Cloud.Networkservices.V1.EndpointMatcher do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matcher_type:
            {:metadata_label_matcher,
             Google.Cloud.Networkservices.V1.EndpointMatcher.MetadataLabelMatcher.t() | nil}
        }

  defstruct matcher_type: nil

  oneof :matcher_type, 0

  field :metadata_label_matcher, 1,
    type: Google.Cloud.Networkservices.V1.EndpointMatcher.MetadataLabelMatcher,
    json_name: "metadataLabelMatcher",
    oneof: 0
end
