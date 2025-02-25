defmodule Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig.AggregationInterval do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AGGREGATION_INTERVAL_UNSPECIFIED, 0
  field :INTERVAL_5_SEC, 1
  field :INTERVAL_30_SEC, 2
  field :INTERVAL_1_MIN, 3
  field :INTERVAL_5_MIN, 4
  field :INTERVAL_10_MIN, 5
  field :INTERVAL_15_MIN, 6
end

defmodule Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig.Metadata do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :METADATA_UNSPECIFIED, 0
  field :INCLUDE_ALL_METADATA, 1
  field :EXCLUDE_ALL_METADATA, 2
  field :CUSTOM_METADATA, 3
end

defmodule Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :target_resource, 0

  field :name, 1, type: :string, deprecated: false
  field :description, 2, proto3_optional: true, type: :string, deprecated: false

  field :state, 3,
    proto3_optional: true,
    type: Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig.State,
    enum: true,
    deprecated: false

  field :aggregation_interval, 4,
    proto3_optional: true,
    type: Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig.AggregationInterval,
    json_name: "aggregationInterval",
    enum: true,
    deprecated: false

  field :flow_sampling, 5,
    proto3_optional: true,
    type: :float,
    json_name: "flowSampling",
    deprecated: false

  field :metadata, 6,
    proto3_optional: true,
    type: Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig.Metadata,
    enum: true,
    deprecated: false

  field :metadata_fields, 7,
    repeated: true,
    type: :string,
    json_name: "metadataFields",
    deprecated: false

  field :filter_expr, 8,
    proto3_optional: true,
    type: :string,
    json_name: "filterExpr",
    deprecated: false

  field :interconnect_attachment, 102,
    type: :string,
    json_name: "interconnectAttachment",
    oneof: 0

  field :vpn_tunnel, 103, type: :string, json_name: "vpnTunnel", oneof: 0

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
