defmodule Google.Iam.V2beta.Policy.AnnotationsEntry do
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
defmodule Google.Iam.V2beta.Policy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          kind: String.t(),
          display_name: String.t(),
          annotations: %{String.t() => String.t()},
          etag: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          rules: [Google.Iam.V2beta.PolicyRule.t()]
        }

  defstruct name: "",
            uid: "",
            kind: "",
            display_name: "",
            annotations: %{},
            etag: "",
            create_time: nil,
            update_time: nil,
            delete_time: nil,
            rules: []

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :kind, 3, type: :string, deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName"

  field :annotations, 5,
    repeated: true,
    type: Google.Iam.V2beta.Policy.AnnotationsEntry,
    map: true

  field :etag, 6, type: :string

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :rules, 10, repeated: true, type: Google.Iam.V2beta.PolicyRule
end
defmodule Google.Iam.V2beta.PolicyRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: {:deny_rule, Google.Iam.V2beta.DenyRule.t() | nil},
          description: String.t()
        }

  defstruct kind: nil,
            description: ""

  oneof :kind, 0

  field :deny_rule, 2, type: Google.Iam.V2beta.DenyRule, json_name: "denyRule", oneof: 0
  field :description, 1, type: :string
end
defmodule Google.Iam.V2beta.ListPoliciesRequest do
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
defmodule Google.Iam.V2beta.ListPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policies: [Google.Iam.V2beta.Policy.t()],
          next_page_token: String.t()
        }

  defstruct policies: [],
            next_page_token: ""

  field :policies, 1, repeated: true, type: Google.Iam.V2beta.Policy
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Iam.V2beta.GetPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Iam.V2beta.CreatePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          policy: Google.Iam.V2beta.Policy.t() | nil,
          policy_id: String.t()
        }

  defstruct parent: "",
            policy: nil,
            policy_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :policy, 2, type: Google.Iam.V2beta.Policy, deprecated: false
  field :policy_id, 3, type: :string, json_name: "policyId"
end
defmodule Google.Iam.V2beta.UpdatePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: Google.Iam.V2beta.Policy.t() | nil
        }

  defstruct policy: nil

  field :policy, 1, type: Google.Iam.V2beta.Policy, deprecated: false
end
defmodule Google.Iam.V2beta.DeletePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct name: "",
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end
defmodule Google.Iam.V2beta.PolicyOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct create_time: nil

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
defmodule Google.Iam.V2beta.Policies.Service do
  @moduledoc false
  use GRPC.Service, name: "google.iam.v2beta.Policies"

  rpc :ListPolicies, Google.Iam.V2beta.ListPoliciesRequest, Google.Iam.V2beta.ListPoliciesResponse

  rpc :GetPolicy, Google.Iam.V2beta.GetPolicyRequest, Google.Iam.V2beta.Policy

  rpc :CreatePolicy, Google.Iam.V2beta.CreatePolicyRequest, Google.Longrunning.Operation

  rpc :UpdatePolicy, Google.Iam.V2beta.UpdatePolicyRequest, Google.Longrunning.Operation

  rpc :DeletePolicy, Google.Iam.V2beta.DeletePolicyRequest, Google.Longrunning.Operation
end

defmodule Google.Iam.V2beta.Policies.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Iam.V2beta.Policies.Service
end
