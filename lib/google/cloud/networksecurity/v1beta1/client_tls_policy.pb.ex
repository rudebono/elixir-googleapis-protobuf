defmodule Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          sni: String.t(),
          client_certificate: Google.Cloud.Networksecurity.V1beta1.CertificateProvider.t() | nil,
          server_validation_ca: [Google.Cloud.Networksecurity.V1beta1.ValidationCA.t()]
        }

  defstruct [
    :name,
    :description,
    :create_time,
    :update_time,
    :labels,
    :sni,
    :client_certificate,
    :server_validation_ca
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy.LabelsEntry,
    map: true

  field :sni, 6, type: :string

  field :client_certificate, 7,
    type: Google.Cloud.Networksecurity.V1beta1.CertificateProvider,
    json_name: "clientCertificate"

  field :server_validation_ca, 8,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.ValidationCA,
    json_name: "serverValidationCa"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.ListClientTlsPoliciesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.ListClientTlsPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          client_tls_policies: [Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy.t()],
          next_page_token: String.t()
        }

  defstruct [:client_tls_policies, :next_page_token]

  field :client_tls_policies, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy,
    json_name: "clientTlsPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.GetClientTlsPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.CreateClientTlsPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          client_tls_policy_id: String.t(),
          client_tls_policy: Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy.t() | nil
        }

  defstruct [:parent, :client_tls_policy_id, :client_tls_policy]

  field :parent, 1, type: :string
  field :client_tls_policy_id, 2, type: :string, json_name: "clientTlsPolicyId"

  field :client_tls_policy, 3,
    type: Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy,
    json_name: "clientTlsPolicy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.UpdateClientTlsPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          client_tls_policy: Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy.t() | nil
        }

  defstruct [:update_mask, :client_tls_policy]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :client_tls_policy, 2,
    type: Google.Cloud.Networksecurity.V1beta1.ClientTlsPolicy,
    json_name: "clientTlsPolicy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networksecurity.V1beta1.DeleteClientTlsPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end
