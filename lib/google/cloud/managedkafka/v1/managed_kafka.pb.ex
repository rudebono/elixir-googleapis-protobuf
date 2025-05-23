defmodule Google.Cloud.Managedkafka.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Managedkafka.V1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Managedkafka.V1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Managedkafka.V1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Managedkafka.V1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListTopicsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListTopicsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :topics, 1, repeated: true, type: Google.Cloud.Managedkafka.V1.Topic
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Managedkafka.V1.GetTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.CreateTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :topic_id, 2, type: :string, json_name: "topicId", deprecated: false
  field :topic, 3, type: Google.Cloud.Managedkafka.V1.Topic, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.UpdateTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :topic, 2, type: Google.Cloud.Managedkafka.V1.Topic, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.DeleteTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListConsumerGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListConsumerGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :consumer_groups, 1,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.ConsumerGroup,
    json_name: "consumerGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Managedkafka.V1.GetConsumerGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.UpdateConsumerGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :consumer_group, 2,
    type: Google.Cloud.Managedkafka.V1.ConsumerGroup,
    json_name: "consumerGroup",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.DeleteConsumerGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListAclsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListAclsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :acls, 1, repeated: true, type: Google.Cloud.Managedkafka.V1.Acl
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Managedkafka.V1.GetAclRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.CreateAclRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :acl_id, 2, type: :string, json_name: "aclId", deprecated: false
  field :acl, 3, type: Google.Cloud.Managedkafka.V1.Acl, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.UpdateAclRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :acl, 1, type: Google.Cloud.Managedkafka.V1.Acl, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.DeleteAclRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.AddAclEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :acl, 1, type: :string, deprecated: false

  field :acl_entry, 2,
    type: Google.Cloud.Managedkafka.V1.AclEntry,
    json_name: "aclEntry",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.AddAclEntryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :acl, 1, type: Google.Cloud.Managedkafka.V1.Acl
  field :acl_created, 2, type: :bool, json_name: "aclCreated"
end

defmodule Google.Cloud.Managedkafka.V1.RemoveAclEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :acl, 1, type: :string, deprecated: false

  field :acl_entry, 2,
    type: Google.Cloud.Managedkafka.V1.AclEntry,
    json_name: "aclEntry",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.RemoveAclEntryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :result, 0

  field :acl, 1, type: Google.Cloud.Managedkafka.V1.Acl, oneof: 0
  field :acl_deleted, 2, type: :bool, json_name: "aclDeleted", oneof: 0
end

defmodule Google.Cloud.Managedkafka.V1.ManagedKafka.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.managedkafka.v1.ManagedKafka",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListClusters,
      Google.Cloud.Managedkafka.V1.ListClustersRequest,
      Google.Cloud.Managedkafka.V1.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Managedkafka.V1.GetClusterRequest,
      Google.Cloud.Managedkafka.V1.Cluster

  rpc :CreateCluster,
      Google.Cloud.Managedkafka.V1.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Cloud.Managedkafka.V1.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Managedkafka.V1.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :ListTopics,
      Google.Cloud.Managedkafka.V1.ListTopicsRequest,
      Google.Cloud.Managedkafka.V1.ListTopicsResponse

  rpc :GetTopic, Google.Cloud.Managedkafka.V1.GetTopicRequest, Google.Cloud.Managedkafka.V1.Topic

  rpc :CreateTopic,
      Google.Cloud.Managedkafka.V1.CreateTopicRequest,
      Google.Cloud.Managedkafka.V1.Topic

  rpc :UpdateTopic,
      Google.Cloud.Managedkafka.V1.UpdateTopicRequest,
      Google.Cloud.Managedkafka.V1.Topic

  rpc :DeleteTopic, Google.Cloud.Managedkafka.V1.DeleteTopicRequest, Google.Protobuf.Empty

  rpc :ListConsumerGroups,
      Google.Cloud.Managedkafka.V1.ListConsumerGroupsRequest,
      Google.Cloud.Managedkafka.V1.ListConsumerGroupsResponse

  rpc :GetConsumerGroup,
      Google.Cloud.Managedkafka.V1.GetConsumerGroupRequest,
      Google.Cloud.Managedkafka.V1.ConsumerGroup

  rpc :UpdateConsumerGroup,
      Google.Cloud.Managedkafka.V1.UpdateConsumerGroupRequest,
      Google.Cloud.Managedkafka.V1.ConsumerGroup

  rpc :DeleteConsumerGroup,
      Google.Cloud.Managedkafka.V1.DeleteConsumerGroupRequest,
      Google.Protobuf.Empty

  rpc :ListAcls,
      Google.Cloud.Managedkafka.V1.ListAclsRequest,
      Google.Cloud.Managedkafka.V1.ListAclsResponse

  rpc :GetAcl, Google.Cloud.Managedkafka.V1.GetAclRequest, Google.Cloud.Managedkafka.V1.Acl

  rpc :CreateAcl, Google.Cloud.Managedkafka.V1.CreateAclRequest, Google.Cloud.Managedkafka.V1.Acl

  rpc :UpdateAcl, Google.Cloud.Managedkafka.V1.UpdateAclRequest, Google.Cloud.Managedkafka.V1.Acl

  rpc :DeleteAcl, Google.Cloud.Managedkafka.V1.DeleteAclRequest, Google.Protobuf.Empty

  rpc :AddAclEntry,
      Google.Cloud.Managedkafka.V1.AddAclEntryRequest,
      Google.Cloud.Managedkafka.V1.AddAclEntryResponse

  rpc :RemoveAclEntry,
      Google.Cloud.Managedkafka.V1.RemoveAclEntryRequest,
      Google.Cloud.Managedkafka.V1.RemoveAclEntryResponse
end

defmodule Google.Cloud.Managedkafka.V1.ManagedKafka.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Managedkafka.V1.ManagedKafka.Service
end
