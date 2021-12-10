defmodule Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.MTLSPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          client_validation_ca: [Google.Cloud.Networksecurity.V1beta1.ValidationCA.t()]
        }

  defstruct client_validation_ca: []

  field :client_validation_ca, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.ValidationCA,
    json_name: "clientValidationCa",
    deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.LabelsEntry do
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
defmodule Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          allow_open: boolean,
          server_certificate: Google.Cloud.Networksecurity.V1beta1.CertificateProvider.t() | nil,
          mtls_policy: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.MTLSPolicy.t() | nil
        }

  defstruct name: "",
            description: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            allow_open: false,
            server_certificate: nil,
            mtls_policy: nil

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
    type: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.LabelsEntry,
    map: true,
    deprecated: false

  field :allow_open, 6, type: :bool, json_name: "allowOpen", deprecated: false

  field :server_certificate, 7,
    type: Google.Cloud.Networksecurity.V1beta1.CertificateProvider,
    json_name: "serverCertificate",
    deprecated: false

  field :mtls_policy, 8,
    type: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.MTLSPolicy,
    json_name: "mtlsPolicy",
    deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.ListServerTlsPoliciesRequest do
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
defmodule Google.Cloud.Networksecurity.V1beta1.ListServerTlsPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          server_tls_policies: [Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.t()],
          next_page_token: String.t()
        }

  defstruct server_tls_policies: [],
            next_page_token: ""

  field :server_tls_policies, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy,
    json_name: "serverTlsPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Networksecurity.V1beta1.GetServerTlsPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.CreateServerTlsPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          server_tls_policy_id: String.t(),
          server_tls_policy: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.t() | nil
        }

  defstruct parent: "",
            server_tls_policy_id: "",
            server_tls_policy: nil

  field :parent, 1, type: :string, deprecated: false
  field :server_tls_policy_id, 2, type: :string, json_name: "serverTlsPolicyId", deprecated: false

  field :server_tls_policy, 3,
    type: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy,
    json_name: "serverTlsPolicy",
    deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.UpdateServerTlsPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          server_tls_policy: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.t() | nil
        }

  defstruct update_mask: nil,
            server_tls_policy: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :server_tls_policy, 2,
    type: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy,
    json_name: "serverTlsPolicy",
    deprecated: false
end
defmodule Google.Cloud.Networksecurity.V1beta1.DeleteServerTlsPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
