defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.BlockchainType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BLOCKCHAIN_TYPE_UNSPECIFIED, 0
  field :ETHEREUM, 1
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :DELETING, 2
  field :RUNNING, 4
  field :ERROR, 5
  field :UPDATING, 6
  field :REPAIRING, 7
  field :RECONCILING, 8
  field :SYNCING, 9
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.Network do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NETWORK_UNSPECIFIED, 0
  field :MAINNET, 1
  field :TESTNET_GOERLI_PRATER, 2
  field :TESTNET_SEPOLIA, 3
  field :TESTNET_HOLESKY, 4
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.NodeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :NODE_TYPE_UNSPECIFIED, 0
  field :LIGHT, 1
  field :FULL, 2
  field :ARCHIVE, 3
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.ExecutionClient do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EXECUTION_CLIENT_UNSPECIFIED, 0
  field :GETH, 1
  field :ERIGON, 2
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.ConsensusClient do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONSENSUS_CLIENT_UNSPECIFIED, 0
  field :LIGHTHOUSE, 1
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.GethDetails.GarbageCollectionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GARBAGE_COLLECTION_MODE_UNSPECIFIED, 0
  field :FULL, 1
  field :ARCHIVE, 2
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.ConnectionInfo.EndpointInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :json_rpc_api_endpoint, 1,
    type: :string,
    json_name: "jsonRpcApiEndpoint",
    deprecated: false

  field :websockets_api_endpoint, 2,
    type: :string,
    json_name: "websocketsApiEndpoint",
    deprecated: false
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.ConnectionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint_info, 2,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.ConnectionInfo.EndpointInfo,
    json_name: "endpointInfo",
    deprecated: false

  field :service_attachment, 3, type: :string, json_name: "serviceAttachment", deprecated: false
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.GethDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :garbage_collection_mode, 1,
    proto3_optional: true,
    type:
      Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.GethDetails.GarbageCollectionMode,
    json_name: "garbageCollectionMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.EthereumEndpoints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :beacon_api_endpoint, 1, type: :string, json_name: "beaconApiEndpoint", deprecated: false

  field :beacon_prometheus_metrics_api_endpoint, 2,
    type: :string,
    json_name: "beaconPrometheusMetricsApiEndpoint",
    deprecated: false

  field :execution_client_prometheus_metrics_api_endpoint, 3,
    type: :string,
    json_name: "executionClientPrometheusMetricsApiEndpoint",
    deprecated: false
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.ValidatorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mev_relay_urls, 1, repeated: true, type: :string, json_name: "mevRelayUrls"

  field :managed_validator_client, 2,
    type: :bool,
    json_name: "managedValidatorClient",
    deprecated: false

  field :beacon_fee_recipient, 3,
    proto3_optional: true,
    type: :string,
    json_name: "beaconFeeRecipient"
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :execution_client_details, 0

  field :geth_details, 8,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.GethDetails,
    json_name: "gethDetails",
    oneof: 0

  field :network, 1,
    proto3_optional: true,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.Network,
    enum: true,
    deprecated: false

  field :node_type, 2,
    proto3_optional: true,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.NodeType,
    json_name: "nodeType",
    enum: true,
    deprecated: false

  field :execution_client, 3,
    proto3_optional: true,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.ExecutionClient,
    json_name: "executionClient",
    enum: true,
    deprecated: false

  field :consensus_client, 4,
    proto3_optional: true,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.ConsensusClient,
    json_name: "consensusClient",
    enum: true,
    deprecated: false

  field :api_enable_admin, 5,
    proto3_optional: true,
    type: :bool,
    json_name: "apiEnableAdmin",
    deprecated: false

  field :api_enable_debug, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "apiEnableDebug",
    deprecated: false

  field :additional_endpoints, 7,
    proto3_optional: true,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.EthereumEndpoints,
    json_name: "additionalEndpoints",
    deprecated: false

  field :validator_config, 10,
    proto3_optional: true,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails.ValidatorConfig,
    json_name: "validatorConfig"
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :blockchain_type_details, 0

  field :ethereum_details, 7,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.EthereumDetails,
    json_name: "ethereumDetails",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.LabelsEntry,
    map: true

  field :blockchain_type, 5,
    proto3_optional: true,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.BlockchainType,
    json_name: "blockchainType",
    enum: true,
    deprecated: false

  field :connection_info, 6,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.ConnectionInfo,
    json_name: "connectionInfo",
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode.State,
    enum: true,
    deprecated: false

  field :private_service_connect_enabled, 12,
    type: :bool,
    json_name: "privateServiceConnectEnabled",
    deprecated: false
end

defmodule Google.Cloud.Blockchainnodeengine.V1.ListBlockchainNodesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Blockchainnodeengine.V1.ListBlockchainNodesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :blockchain_nodes, 1,
    repeated: true,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode,
    json_name: "blockchainNodes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Blockchainnodeengine.V1.GetBlockchainNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Blockchainnodeengine.V1.CreateBlockchainNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :blockchain_node_id, 2, type: :string, json_name: "blockchainNodeId", deprecated: false

  field :blockchain_node, 3,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode,
    json_name: "blockchainNode",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Blockchainnodeengine.V1.UpdateBlockchainNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :blockchain_node, 2,
    type: Google.Cloud.Blockchainnodeengine.V1.BlockchainNode,
    json_name: "blockchainNode",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Blockchainnodeengine.V1.DeleteBlockchainNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Blockchainnodeengine.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNodeEngine.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.blockchainnodeengine.v1.BlockchainNodeEngine",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListBlockchainNodes,
      Google.Cloud.Blockchainnodeengine.V1.ListBlockchainNodesRequest,
      Google.Cloud.Blockchainnodeengine.V1.ListBlockchainNodesResponse

  rpc :GetBlockchainNode,
      Google.Cloud.Blockchainnodeengine.V1.GetBlockchainNodeRequest,
      Google.Cloud.Blockchainnodeengine.V1.BlockchainNode

  rpc :CreateBlockchainNode,
      Google.Cloud.Blockchainnodeengine.V1.CreateBlockchainNodeRequest,
      Google.Longrunning.Operation

  rpc :UpdateBlockchainNode,
      Google.Cloud.Blockchainnodeengine.V1.UpdateBlockchainNodeRequest,
      Google.Longrunning.Operation

  rpc :DeleteBlockchainNode,
      Google.Cloud.Blockchainnodeengine.V1.DeleteBlockchainNodeRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Blockchainnodeengine.V1.BlockchainNodeEngine.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Blockchainnodeengine.V1.BlockchainNodeEngine.Service
end
