defmodule Google.Cloud.Securitycenter.V1.SecurityPosture.PolicyDriftDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field, 1, type: :string
  field :expected_value, 2, type: :string, json_name: "expectedValue"
  field :detected_value, 3, type: :string, json_name: "detectedValue"
end

defmodule Google.Cloud.Securitycenter.V1.SecurityPosture do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId"
  field :posture_deployment_resource, 3, type: :string, json_name: "postureDeploymentResource"
  field :posture_deployment, 4, type: :string, json_name: "postureDeployment"
  field :changed_policy, 5, type: :string, json_name: "changedPolicy"
  field :policy_set, 6, type: :string, json_name: "policySet"
  field :policy, 7, type: :string

  field :policy_drift_details, 8,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.SecurityPosture.PolicyDriftDetails,
    json_name: "policyDriftDetails"
end