defmodule Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Action do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ACTION_UNSPECIFIED | :ALLOW | :DENY

  field :ACTION_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end
defmodule Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.Source do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          principals: [String.t()],
          ip_blocks: [String.t()]
        }

  defstruct principals: [],
            ip_blocks: []

  field :principals, 1, repeated: true, type: :string, deprecated: false
  field :ip_blocks, 2, repeated: true, type: :string, json_name: "ipBlocks", deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.Destination.HttpHeaderMatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {:regex_match, String.t()},
          header_name: String.t()
        }

  defstruct type: nil,
            header_name: ""

  oneof :type, 0

  field :regex_match, 2, type: :string, json_name: "regexMatch", oneof: 0, deprecated: false
  field :header_name, 1, type: :string, json_name: "headerName", deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.Destination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hosts: [String.t()],
          ports: [non_neg_integer],
          methods: [String.t()],
          http_header_match:
            Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.Destination.HttpHeaderMatch.t()
            | nil
        }

  defstruct hosts: [],
            ports: [],
            methods: [],
            http_header_match: nil

  field :hosts, 1, repeated: true, type: :string, deprecated: false
  field :ports, 2, repeated: true, type: :uint32, deprecated: false
  field :methods, 4, repeated: true, type: :string, deprecated: false

  field :http_header_match, 5,
    type:
      Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.Destination.HttpHeaderMatch,
    json_name: "httpHeaderMatch",
    deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sources: [Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.Source.t()],
          destinations: [
            Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.Destination.t()
          ]
        }

  defstruct sources: [],
            destinations: []

  field :sources, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.Source,
    deprecated: false

  field :destinations, 2,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.Destination,
    deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          action: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Action.t(),
          rules: [Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule.t()]
        }

  defstruct name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            action: :ACTION_UNSPECIFIED,
            rules: []

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
    type: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.LabelsEntry,
    map: true,
    deprecated: false

  field :action, 6,
    type: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Action,
    enum: true,
    deprecated: false

  field :rules, 7,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.Rule,
    deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.ListAuthorizationPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Networksecurity.V1beta1.ListAuthorizationPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authorization_policies: [Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.t()],
          next_page_token: String.t()
        }

  defstruct authorization_policies: [],
            next_page_token: ""

  field :authorization_policies, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy,
    json_name: "authorizationPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Networksecurity.V1beta1.GetAuthorizationPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.CreateAuthorizationPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          authorization_policy_id: String.t(),
          authorization_policy: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.t() | nil
        }

  defstruct parent: "",
            authorization_policy_id: "",
            authorization_policy: nil

  field :parent, 1, type: :string, deprecated: false

  field :authorization_policy_id, 2,
    type: :string,
    json_name: "authorizationPolicyId",
    deprecated: false

  field :authorization_policy, 3,
    type: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy,
    json_name: "authorizationPolicy",
    deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.UpdateAuthorizationPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          authorization_policy: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy.t() | nil
        }

  defstruct update_mask: nil,
            authorization_policy: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :authorization_policy, 2,
    type: Google.Cloud.Networksecurity.V1beta1.AuthorizationPolicy,
    json_name: "authorizationPolicy",
    deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.DeleteAuthorizationPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
