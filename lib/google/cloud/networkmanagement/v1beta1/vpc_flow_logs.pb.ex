defmodule Google.Cloud.Networkmanagement.V1beta1.ListVpcFlowLogsConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ListVpcFlowLogsConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :vpc_flow_logs_configs, 1,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig,
    json_name: "vpcFlowLogsConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.GetVpcFlowLogsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1beta1.CreateVpcFlowLogsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :vpc_flow_logs_config_id, 2,
    type: :string,
    json_name: "vpcFlowLogsConfigId",
    deprecated: false

  field :vpc_flow_logs_config, 3,
    type: Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig,
    json_name: "vpcFlowLogsConfig",
    deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1beta1.UpdateVpcFlowLogsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :vpc_flow_logs_config, 2,
    type: Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig,
    json_name: "vpcFlowLogsConfig",
    deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1beta1.DeleteVpcFlowLogsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networkmanagement.v1beta1.VpcFlowLogsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListVpcFlowLogsConfigs,
      Google.Cloud.Networkmanagement.V1beta1.ListVpcFlowLogsConfigsRequest,
      Google.Cloud.Networkmanagement.V1beta1.ListVpcFlowLogsConfigsResponse

  rpc :GetVpcFlowLogsConfig,
      Google.Cloud.Networkmanagement.V1beta1.GetVpcFlowLogsConfigRequest,
      Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsConfig

  rpc :CreateVpcFlowLogsConfig,
      Google.Cloud.Networkmanagement.V1beta1.CreateVpcFlowLogsConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateVpcFlowLogsConfig,
      Google.Cloud.Networkmanagement.V1beta1.UpdateVpcFlowLogsConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteVpcFlowLogsConfig,
      Google.Cloud.Networkmanagement.V1beta1.DeleteVpcFlowLogsConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networkmanagement.V1beta1.VpcFlowLogsService.Service
end