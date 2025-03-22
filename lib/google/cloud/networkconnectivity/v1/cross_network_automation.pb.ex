defmodule Google.Cloud.Networkconnectivity.V1.Infrastructure do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INFRASTRUCTURE_UNSPECIFIED, 0
  field :PSC, 1
end

defmodule Google.Cloud.Networkconnectivity.V1.ConnectionErrorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONNECTION_ERROR_TYPE_UNSPECIFIED, 0
  field :ERROR_INTERNAL, 1
  field :ERROR_CONSUMER_SIDE, 2
  field :ERROR_PRODUCER_SIDE, 3
end

defmodule Google.Cloud.Networkconnectivity.V1.IPVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :IP_VERSION_UNSPECIFIED, 0
  field :IPV4, 1
  field :IPV6, 2
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :VALID, 1
  field :CONNECTION_POLICY_MISSING, 2
  field :POLICY_LIMIT_REACHED, 3
  field :CONSUMER_INSTANCE_PROJECT_NOT_ALLOWLISTED, 4
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConnection.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :FAILED, 2
  field :CREATING, 3
  field :DELETING, 4
  field :CREATE_REPAIRING, 5
  field :DELETE_REPAIRING, 6
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :FAILED, 2
  field :CREATING, 3
  field :DELETING, 4
  field :CREATE_REPAIRING, 5
  field :DELETE_REPAIRING, 6
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.PscConfig.ProducerInstanceLocation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PRODUCER_INSTANCE_LOCATION_UNSPECIFIED, 0
  field :CUSTOM_RESOURCE_HIERARCHY_LEVELS, 1
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ProducerPscConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_attachment_uri, 1,
    type: :string,
    json_name: "serviceAttachmentUri",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConfig.ServiceAttachmentIpAddressMapEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConfig.ProducerInstanceMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project, 1, type: :string
  field :network, 2, type: :string, deprecated: false
  field :disable_global_access, 3, type: :bool, json_name: "disableGlobalAccess"

  field :state, 4,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConfig.State,
    enum: true,
    deprecated: false

  field :producer_instance_id, 5, type: :string, json_name: "producerInstanceId", deprecated: true

  field :service_attachment_ip_address_map, 6,
    repeated: true,
    type:
      Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConfig.ServiceAttachmentIpAddressMapEntry,
    json_name: "serviceAttachmentIpAddressMap",
    map: true,
    deprecated: false

  field :consumer_instance_project, 7,
    type: :string,
    json_name: "consumerInstanceProject",
    deprecated: false

  field :producer_instance_metadata, 8,
    repeated: true,
    type:
      Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConfig.ProducerInstanceMetadataEntry,
    json_name: "producerInstanceMetadata",
    map: true,
    deprecated: false

  field :ip_version, 9,
    proto3_optional: true,
    type: Google.Cloud.Networkconnectivity.V1.IPVersion,
    json_name: "ipVersion",
    enum: true
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConnection.ProducerInstanceMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_attachment_uri, 1, type: :string, json_name: "serviceAttachmentUri"

  field :state, 2,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConnection.State,
    enum: true

  field :project, 3, type: :string
  field :network, 4, type: :string
  field :psc_connection_id, 5, type: :string, json_name: "pscConnectionId"
  field :ip, 6, type: :string

  field :error_type, 7,
    type: Google.Cloud.Networkconnectivity.V1.ConnectionErrorType,
    json_name: "errorType",
    enum: true,
    deprecated: true

  field :error, 8, type: Google.Rpc.Status, deprecated: true
  field :gce_operation, 9, type: :string, json_name: "gceOperation"
  field :forwarding_rule, 10, type: :string, json_name: "forwardingRule"
  field :error_info, 11, type: Google.Rpc.ErrorInfo, json_name: "errorInfo", deprecated: false

  field :selected_subnetwork, 12,
    type: :string,
    json_name: "selectedSubnetwork",
    deprecated: false

  field :producer_instance_id, 13,
    type: :string,
    json_name: "producerInstanceId",
    deprecated: true

  field :producer_instance_metadata, 14,
    repeated: true,
    type:
      Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConnection.ProducerInstanceMetadataEntry,
    json_name: "producerInstanceMetadata",
    map: true,
    deprecated: false

  field :ip_version, 15,
    proto3_optional: true,
    type: Google.Cloud.Networkconnectivity.V1.IPVersion,
    json_name: "ipVersion",
    enum: true
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :service_class, 7, type: :string, json_name: "serviceClass"
  field :service_class_uri, 12, type: :string, json_name: "serviceClassUri", deprecated: false

  field :infrastructure, 8,
    type: Google.Cloud.Networkconnectivity.V1.Infrastructure,
    enum: true,
    deprecated: false

  field :producer_psc_configs, 9,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ProducerPscConfig,
    json_name: "producerPscConfigs"

  field :consumer_psc_configs, 10,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConfig,
    json_name: "consumerPscConfigs"

  field :consumer_psc_connections, 11,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap.ConsumerPscConnection,
    json_name: "consumerPscConnections",
    deprecated: false

  field :token, 13, type: :string
  field :etag, 14, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListServiceConnectionMapsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListServiceConnectionMapsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_connection_maps, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap,
    json_name: "serviceConnectionMaps"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetServiceConnectionMapRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateServiceConnectionMapRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :service_connection_map_id, 2,
    type: :string,
    json_name: "serviceConnectionMapId",
    deprecated: false

  field :service_connection_map, 3,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap,
    json_name: "serviceConnectionMap",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateServiceConnectionMapRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :service_connection_map, 2,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap,
    json_name: "serviceConnectionMap",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteServiceConnectionMapRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.PscConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :subnetworks, 1, repeated: true, type: :string, deprecated: false
  field :limit, 2, proto3_optional: true, type: :int64, deprecated: false

  field :producer_instance_location, 3,
    type:
      Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.PscConfig.ProducerInstanceLocation,
    json_name: "producerInstanceLocation",
    enum: true,
    deprecated: false

  field :allowed_google_producers_resource_hierarchy_level, 4,
    repeated: true,
    type: :string,
    json_name: "allowedGoogleProducersResourceHierarchyLevel",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.PscConnection.ProducerInstanceMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.PscConnection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.State,
    enum: true

  field :consumer_forwarding_rule, 2, type: :string, json_name: "consumerForwardingRule"
  field :consumer_address, 3, type: :string, json_name: "consumerAddress"

  field :error_type, 4,
    type: Google.Cloud.Networkconnectivity.V1.ConnectionErrorType,
    json_name: "errorType",
    enum: true,
    deprecated: true

  field :error, 5, type: Google.Rpc.Status, deprecated: true
  field :gce_operation, 6, type: :string, json_name: "gceOperation"
  field :consumer_target_project, 7, type: :string, json_name: "consumerTargetProject"
  field :psc_connection_id, 8, type: :string, json_name: "pscConnectionId"
  field :error_info, 9, type: Google.Rpc.ErrorInfo, json_name: "errorInfo", deprecated: false

  field :selected_subnetwork, 10,
    type: :string,
    json_name: "selectedSubnetwork",
    deprecated: false

  field :producer_instance_id, 11,
    type: :string,
    json_name: "producerInstanceId",
    deprecated: true

  field :producer_instance_metadata, 12,
    repeated: true,
    type:
      Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.PscConnection.ProducerInstanceMetadataEntry,
    json_name: "producerInstanceMetadata",
    map: true,
    deprecated: false

  field :service_class, 13, type: :string, json_name: "serviceClass", deprecated: false

  field :ip_version, 14,
    proto3_optional: true,
    type: Google.Cloud.Networkconnectivity.V1.IPVersion,
    json_name: "ipVersion",
    enum: true
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :network, 6, type: :string, deprecated: false
  field :service_class, 7, type: :string, json_name: "serviceClass"

  field :infrastructure, 8,
    type: Google.Cloud.Networkconnectivity.V1.Infrastructure,
    enum: true,
    deprecated: false

  field :psc_config, 9,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.PscConfig,
    json_name: "pscConfig"

  field :psc_connections, 10,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy.PscConnection,
    json_name: "pscConnections",
    deprecated: false

  field :etag, 11, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListServiceConnectionPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListServiceConnectionPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_connection_policies, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy,
    json_name: "serviceConnectionPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetServiceConnectionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateServiceConnectionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :service_connection_policy_id, 2,
    type: :string,
    json_name: "serviceConnectionPolicyId",
    deprecated: false

  field :service_connection_policy, 3,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy,
    json_name: "serviceConnectionPolicy",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateServiceConnectionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :service_connection_policy, 2,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy,
    json_name: "serviceConnectionPolicy",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteServiceConnectionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceClass.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceClass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :service_class, 7, type: :string, json_name: "serviceClass", deprecated: false

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
    type: Google.Cloud.Networkconnectivity.V1.ServiceClass.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :etag, 8, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListServiceClassesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListServiceClassesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_classes, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.ServiceClass,
    json_name: "serviceClasses"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetServiceClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateServiceClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :service_class, 2,
    type: Google.Cloud.Networkconnectivity.V1.ServiceClass,
    json_name: "serviceClass",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteServiceClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionToken.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.ServiceConnectionToken do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionToken.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :network, 6, type: :string, deprecated: false
  field :token, 7, type: :string, deprecated: false

  field :expire_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :etag, 9, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListServiceConnectionTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListServiceConnectionTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_connection_tokens, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionToken,
    json_name: "serviceConnectionTokens"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetServiceConnectionTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateServiceConnectionTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :service_connection_token_id, 2,
    type: :string,
    json_name: "serviceConnectionTokenId",
    deprecated: false

  field :service_connection_token, 3,
    type: Google.Cloud.Networkconnectivity.V1.ServiceConnectionToken,
    json_name: "serviceConnectionToken",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteServiceConnectionTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CrossNetworkAutomationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networkconnectivity.v1.CrossNetworkAutomationService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListServiceConnectionMaps,
      Google.Cloud.Networkconnectivity.V1.ListServiceConnectionMapsRequest,
      Google.Cloud.Networkconnectivity.V1.ListServiceConnectionMapsResponse

  rpc :GetServiceConnectionMap,
      Google.Cloud.Networkconnectivity.V1.GetServiceConnectionMapRequest,
      Google.Cloud.Networkconnectivity.V1.ServiceConnectionMap

  rpc :CreateServiceConnectionMap,
      Google.Cloud.Networkconnectivity.V1.CreateServiceConnectionMapRequest,
      Google.Longrunning.Operation

  rpc :UpdateServiceConnectionMap,
      Google.Cloud.Networkconnectivity.V1.UpdateServiceConnectionMapRequest,
      Google.Longrunning.Operation

  rpc :DeleteServiceConnectionMap,
      Google.Cloud.Networkconnectivity.V1.DeleteServiceConnectionMapRequest,
      Google.Longrunning.Operation

  rpc :ListServiceConnectionPolicies,
      Google.Cloud.Networkconnectivity.V1.ListServiceConnectionPoliciesRequest,
      Google.Cloud.Networkconnectivity.V1.ListServiceConnectionPoliciesResponse

  rpc :GetServiceConnectionPolicy,
      Google.Cloud.Networkconnectivity.V1.GetServiceConnectionPolicyRequest,
      Google.Cloud.Networkconnectivity.V1.ServiceConnectionPolicy

  rpc :CreateServiceConnectionPolicy,
      Google.Cloud.Networkconnectivity.V1.CreateServiceConnectionPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateServiceConnectionPolicy,
      Google.Cloud.Networkconnectivity.V1.UpdateServiceConnectionPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteServiceConnectionPolicy,
      Google.Cloud.Networkconnectivity.V1.DeleteServiceConnectionPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListServiceClasses,
      Google.Cloud.Networkconnectivity.V1.ListServiceClassesRequest,
      Google.Cloud.Networkconnectivity.V1.ListServiceClassesResponse

  rpc :GetServiceClass,
      Google.Cloud.Networkconnectivity.V1.GetServiceClassRequest,
      Google.Cloud.Networkconnectivity.V1.ServiceClass

  rpc :UpdateServiceClass,
      Google.Cloud.Networkconnectivity.V1.UpdateServiceClassRequest,
      Google.Longrunning.Operation

  rpc :DeleteServiceClass,
      Google.Cloud.Networkconnectivity.V1.DeleteServiceClassRequest,
      Google.Longrunning.Operation

  rpc :GetServiceConnectionToken,
      Google.Cloud.Networkconnectivity.V1.GetServiceConnectionTokenRequest,
      Google.Cloud.Networkconnectivity.V1.ServiceConnectionToken

  rpc :ListServiceConnectionTokens,
      Google.Cloud.Networkconnectivity.V1.ListServiceConnectionTokensRequest,
      Google.Cloud.Networkconnectivity.V1.ListServiceConnectionTokensResponse

  rpc :CreateServiceConnectionToken,
      Google.Cloud.Networkconnectivity.V1.CreateServiceConnectionTokenRequest,
      Google.Longrunning.Operation

  rpc :DeleteServiceConnectionToken,
      Google.Cloud.Networkconnectivity.V1.DeleteServiceConnectionTokenRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkconnectivity.V1.CrossNetworkAutomationService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Networkconnectivity.V1.CrossNetworkAutomationService.Service
end
