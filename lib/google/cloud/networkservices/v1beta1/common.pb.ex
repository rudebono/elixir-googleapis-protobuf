defmodule Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabelMatchCriteria do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :METADATA_LABEL_MATCH_CRITERIA_UNSPECIFIED, 0
  field :MATCH_ANY, 1
  field :MATCH_ALL, 2
end

defmodule Google.Cloud.Networkservices.V1beta1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Cloud.Networkservices.V1beta1.TrafficPortSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ports, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabels do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :label_name, 1, type: :string, json_name: "labelName", deprecated: false
  field :label_value, 2, type: :string, json_name: "labelValue", deprecated: false
end

defmodule Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metadata_label_match_criteria, 1,
    type:
      Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabelMatchCriteria,
    json_name: "metadataLabelMatchCriteria",
    enum: true

  field :metadata_labels, 2,
    repeated: true,
    type:
      Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher.MetadataLabels,
    json_name: "metadataLabels"
end

defmodule Google.Cloud.Networkservices.V1beta1.EndpointMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :matcher_type, 0

  field :metadata_label_matcher, 1,
    type: Google.Cloud.Networkservices.V1beta1.EndpointMatcher.MetadataLabelMatcher,
    json_name: "metadataLabelMatcher",
    oneof: 0
end
