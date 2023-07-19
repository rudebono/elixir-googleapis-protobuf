defmodule Google.Cloud.Policytroubleshooter.V1.TroubleshootIamPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :access_tuple, 1,
    type: Google.Cloud.Policytroubleshooter.V1.AccessTuple,
    json_name: "accessTuple"
end

defmodule Google.Cloud.Policytroubleshooter.V1.TroubleshootIamPolicyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :access, 1, type: Google.Cloud.Policytroubleshooter.V1.AccessState, enum: true

  field :explained_policies, 2,
    repeated: true,
    type: Google.Cloud.Policytroubleshooter.V1.ExplainedPolicy,
    json_name: "explainedPolicies"

  field :errors, 3, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Policytroubleshooter.V1.IamChecker.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.policytroubleshooter.v1.IamChecker",
    protoc_gen_elixir_version: "0.12.0"

  rpc :TroubleshootIamPolicy,
      Google.Cloud.Policytroubleshooter.V1.TroubleshootIamPolicyRequest,
      Google.Cloud.Policytroubleshooter.V1.TroubleshootIamPolicyResponse
end

defmodule Google.Cloud.Policytroubleshooter.V1.IamChecker.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Policytroubleshooter.V1.IamChecker.Service
end