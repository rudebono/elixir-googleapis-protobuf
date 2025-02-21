defmodule Google.Cloud.Binaryauthorization.V1beta1.GetPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.UpdatePolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy, 1, type: Google.Cloud.Binaryauthorization.V1beta1.Policy, deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.CreateAttestorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :attestor_id, 2, type: :string, json_name: "attestorId", deprecated: false
  field :attestor, 3, type: Google.Cloud.Binaryauthorization.V1beta1.Attestor, deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.GetAttestorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.UpdateAttestorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attestor, 1, type: Google.Cloud.Binaryauthorization.V1beta1.Attestor, deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ListAttestorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.ListAttestorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attestors, 1, repeated: true, type: Google.Cloud.Binaryauthorization.V1beta1.Attestor
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.DeleteAttestorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.GetSystemPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.BinauthzManagementServiceV1Beta1.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetPolicy,
      Google.Cloud.Binaryauthorization.V1beta1.GetPolicyRequest,
      Google.Cloud.Binaryauthorization.V1beta1.Policy

  rpc :UpdatePolicy,
      Google.Cloud.Binaryauthorization.V1beta1.UpdatePolicyRequest,
      Google.Cloud.Binaryauthorization.V1beta1.Policy

  rpc :CreateAttestor,
      Google.Cloud.Binaryauthorization.V1beta1.CreateAttestorRequest,
      Google.Cloud.Binaryauthorization.V1beta1.Attestor

  rpc :GetAttestor,
      Google.Cloud.Binaryauthorization.V1beta1.GetAttestorRequest,
      Google.Cloud.Binaryauthorization.V1beta1.Attestor

  rpc :UpdateAttestor,
      Google.Cloud.Binaryauthorization.V1beta1.UpdateAttestorRequest,
      Google.Cloud.Binaryauthorization.V1beta1.Attestor

  rpc :ListAttestors,
      Google.Cloud.Binaryauthorization.V1beta1.ListAttestorsRequest,
      Google.Cloud.Binaryauthorization.V1beta1.ListAttestorsResponse

  rpc :DeleteAttestor,
      Google.Cloud.Binaryauthorization.V1beta1.DeleteAttestorRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.BinauthzManagementServiceV1Beta1.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Binaryauthorization.V1beta1.BinauthzManagementServiceV1Beta1.Service
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.SystemPolicyV1Beta1.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.binaryauthorization.v1beta1.SystemPolicyV1Beta1",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetSystemPolicy,
      Google.Cloud.Binaryauthorization.V1beta1.GetSystemPolicyRequest,
      Google.Cloud.Binaryauthorization.V1beta1.Policy
end

defmodule Google.Cloud.Binaryauthorization.V1beta1.SystemPolicyV1Beta1.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Binaryauthorization.V1beta1.SystemPolicyV1Beta1.Service
end
