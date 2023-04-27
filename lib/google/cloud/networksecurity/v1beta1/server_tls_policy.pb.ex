defmodule Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.MTLSPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :client_validation_ca, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.ValidationCA,
    json_name: "clientValidationCa"
end

defmodule Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

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
    map: true

  field :allow_open, 6, type: :bool, json_name: "allowOpen"

  field :server_certificate, 7,
    type: Google.Cloud.Networksecurity.V1beta1.CertificateProvider,
    json_name: "serverCertificate"

  field :mtls_policy, 8,
    type: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy.MTLSPolicy,
    json_name: "mtlsPolicy"
end

defmodule Google.Cloud.Networksecurity.V1beta1.ListServerTlsPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1beta1.ListServerTlsPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :server_tls_policies, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy,
    json_name: "serverTlsPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1beta1.GetServerTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.CreateServerTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :server_tls_policy_id, 2, type: :string, json_name: "serverTlsPolicyId", deprecated: false

  field :server_tls_policy, 3,
    type: Google.Cloud.Networksecurity.V1beta1.ServerTlsPolicy,
    json_name: "serverTlsPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.UpdateServerTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end