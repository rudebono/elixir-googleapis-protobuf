defmodule Google.Cloud.Networksecurity.V1.AddressGroup.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :IPV4, 1
  field :IPV6, 2
end

defmodule Google.Cloud.Networksecurity.V1.AddressGroup.Purpose do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PURPOSE_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :CLOUD_ARMOR, 2
end

defmodule Google.Cloud.Networksecurity.V1.AddressGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1.AddressGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1.AddressGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :type, 6,
    type: Google.Cloud.Networksecurity.V1.AddressGroup.Type,
    enum: true,
    deprecated: false

  field :items, 7, repeated: true, type: :string, deprecated: false
  field :capacity, 8, type: :int32, deprecated: false
  field :self_link, 9, type: :string, json_name: "selfLink", deprecated: false

  field :purpose, 10,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1.AddressGroup.Purpose,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.ListAddressGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :return_partial_success, 4,
    type: :bool,
    json_name: "returnPartialSuccess",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.ListAddressGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :address_groups, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1.AddressGroup,
    json_name: "addressGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1.GetAddressGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.CreateAddressGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :address_group_id, 2, type: :string, json_name: "addressGroupId", deprecated: false

  field :address_group, 3,
    type: Google.Cloud.Networksecurity.V1.AddressGroup,
    json_name: "addressGroup",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.UpdateAddressGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :address_group, 2,
    type: Google.Cloud.Networksecurity.V1.AddressGroup,
    json_name: "addressGroup",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.DeleteAddressGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.AddAddressGroupItemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :address_group, 1, type: :string, json_name: "addressGroup", deprecated: false
  field :items, 2, repeated: true, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.RemoveAddressGroupItemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :address_group, 1, type: :string, json_name: "addressGroup", deprecated: false
  field :items, 2, repeated: true, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.CloneAddressGroupItemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :address_group, 1, type: :string, json_name: "addressGroup", deprecated: false

  field :source_address_group, 2,
    type: :string,
    json_name: "sourceAddressGroup",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.ListAddressGroupReferencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :address_group, 1, type: :string, json_name: "addressGroup", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1.ListAddressGroupReferencesResponse.AddressGroupReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :firewall_policy, 1, type: :string, json_name: "firewallPolicy"
  field :security_policy, 4, type: :string, json_name: "securityPolicy"
  field :rule_priority, 2, type: :int32, json_name: "rulePriority"
end

defmodule Google.Cloud.Networksecurity.V1.ListAddressGroupReferencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :address_group_references, 1,
    repeated: true,
    type:
      Google.Cloud.Networksecurity.V1.ListAddressGroupReferencesResponse.AddressGroupReference,
    json_name: "addressGroupReferences"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1.AddressGroupService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1.AddressGroupService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListAddressGroups,
      Google.Cloud.Networksecurity.V1.ListAddressGroupsRequest,
      Google.Cloud.Networksecurity.V1.ListAddressGroupsResponse

  rpc :GetAddressGroup,
      Google.Cloud.Networksecurity.V1.GetAddressGroupRequest,
      Google.Cloud.Networksecurity.V1.AddressGroup

  rpc :CreateAddressGroup,
      Google.Cloud.Networksecurity.V1.CreateAddressGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateAddressGroup,
      Google.Cloud.Networksecurity.V1.UpdateAddressGroupRequest,
      Google.Longrunning.Operation

  rpc :AddAddressGroupItems,
      Google.Cloud.Networksecurity.V1.AddAddressGroupItemsRequest,
      Google.Longrunning.Operation

  rpc :RemoveAddressGroupItems,
      Google.Cloud.Networksecurity.V1.RemoveAddressGroupItemsRequest,
      Google.Longrunning.Operation

  rpc :CloneAddressGroupItems,
      Google.Cloud.Networksecurity.V1.CloneAddressGroupItemsRequest,
      Google.Longrunning.Operation

  rpc :DeleteAddressGroup,
      Google.Cloud.Networksecurity.V1.DeleteAddressGroupRequest,
      Google.Longrunning.Operation

  rpc :ListAddressGroupReferences,
      Google.Cloud.Networksecurity.V1.ListAddressGroupReferencesRequest,
      Google.Cloud.Networksecurity.V1.ListAddressGroupReferencesResponse
end

defmodule Google.Cloud.Networksecurity.V1.AddressGroupService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1.AddressGroupService.Service
end

defmodule Google.Cloud.Networksecurity.V1.OrganizationAddressGroupService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1.OrganizationAddressGroupService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListAddressGroups,
      Google.Cloud.Networksecurity.V1.ListAddressGroupsRequest,
      Google.Cloud.Networksecurity.V1.ListAddressGroupsResponse

  rpc :GetAddressGroup,
      Google.Cloud.Networksecurity.V1.GetAddressGroupRequest,
      Google.Cloud.Networksecurity.V1.AddressGroup

  rpc :CreateAddressGroup,
      Google.Cloud.Networksecurity.V1.CreateAddressGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateAddressGroup,
      Google.Cloud.Networksecurity.V1.UpdateAddressGroupRequest,
      Google.Longrunning.Operation

  rpc :AddAddressGroupItems,
      Google.Cloud.Networksecurity.V1.AddAddressGroupItemsRequest,
      Google.Longrunning.Operation

  rpc :RemoveAddressGroupItems,
      Google.Cloud.Networksecurity.V1.RemoveAddressGroupItemsRequest,
      Google.Longrunning.Operation

  rpc :CloneAddressGroupItems,
      Google.Cloud.Networksecurity.V1.CloneAddressGroupItemsRequest,
      Google.Longrunning.Operation

  rpc :DeleteAddressGroup,
      Google.Cloud.Networksecurity.V1.DeleteAddressGroupRequest,
      Google.Longrunning.Operation

  rpc :ListAddressGroupReferences,
      Google.Cloud.Networksecurity.V1.ListAddressGroupReferencesRequest,
      Google.Cloud.Networksecurity.V1.ListAddressGroupReferencesResponse
end

defmodule Google.Cloud.Networksecurity.V1.OrganizationAddressGroupService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1.OrganizationAddressGroupService.Service
end
