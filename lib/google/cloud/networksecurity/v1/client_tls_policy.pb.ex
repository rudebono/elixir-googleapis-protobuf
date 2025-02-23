defmodule Google.Cloud.Networksecurity.V1.ClientTlsPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1.ClientTlsPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
    type: Google.Cloud.Networksecurity.V1.ClientTlsPolicy.LabelsEntry,
    map: true,
    deprecated: false

  field :sni, 6, type: :string, deprecated: false

  field :client_certificate, 7,
    type: Google.Cloud.Networksecurity.V1.CertificateProvider,
    json_name: "clientCertificate",
    deprecated: false

  field :server_validation_ca, 8,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1.ValidationCA,
    json_name: "serverValidationCa",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.ListClientTlsPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1.ListClientTlsPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :client_tls_policies, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1.ClientTlsPolicy,
    json_name: "clientTlsPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1.GetClientTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.CreateClientTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :client_tls_policy_id, 2, type: :string, json_name: "clientTlsPolicyId", deprecated: false

  field :client_tls_policy, 3,
    type: Google.Cloud.Networksecurity.V1.ClientTlsPolicy,
    json_name: "clientTlsPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.UpdateClientTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :client_tls_policy, 2,
    type: Google.Cloud.Networksecurity.V1.ClientTlsPolicy,
    json_name: "clientTlsPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1.DeleteClientTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
