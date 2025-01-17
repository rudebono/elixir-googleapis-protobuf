defmodule Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Rule.Source do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :principals, 1, repeated: true, type: :string, deprecated: false
  field :ip_blocks, 2, repeated: true, type: :string, json_name: "ipBlocks", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Rule.Destination.HttpHeaderMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :type, 0

  field :regex_match, 2, type: :string, json_name: "regexMatch", oneof: 0, deprecated: false
  field :header_name, 1, type: :string, json_name: "headerName", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Rule.Destination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :hosts, 1, repeated: true, type: :string, deprecated: false
  field :ports, 2, repeated: true, type: :uint32, deprecated: false
  field :methods, 4, repeated: true, type: :string, deprecated: false

  field :http_header_match, 5,
    type: Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Rule.Destination.HttpHeaderMatch,
    json_name: "httpHeaderMatch",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Rule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sources, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Rule.Source,
    deprecated: false

  field :destinations, 2,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Rule.Destination,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.AuthorizationPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1.AuthorizationPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
    type: Google.Cloud.Networksecurity.V1.AuthorizationPolicy.LabelsEntry,
    map: true,
    deprecated: false

  field :action, 6,
    type: Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Action,
    enum: true,
    deprecated: false

  field :rules, 7,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1.AuthorizationPolicy.Rule,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.ListAuthorizationPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1.ListAuthorizationPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :authorization_policies, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1.AuthorizationPolicy,
    json_name: "authorizationPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1.GetAuthorizationPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.CreateAuthorizationPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :authorization_policy_id, 2,
    type: :string,
    json_name: "authorizationPolicyId",
    deprecated: false

  field :authorization_policy, 3,
    type: Google.Cloud.Networksecurity.V1.AuthorizationPolicy,
    json_name: "authorizationPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.UpdateAuthorizationPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :authorization_policy, 2,
    type: Google.Cloud.Networksecurity.V1.AuthorizationPolicy,
    json_name: "authorizationPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.DeleteAuthorizationPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
