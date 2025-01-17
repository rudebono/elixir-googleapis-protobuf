defmodule Google.Cloud.Securityposture.V1.OrgPolicyConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :canned_constraint_id, 1,
    type: :string,
    json_name: "cannedConstraintId",
    deprecated: false

  field :policy_rules, 2,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.PolicyRule,
    json_name: "policyRules",
    deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.OrgPolicyConstraintCustom do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :custom_constraint, 1,
    type: Google.Cloud.Securityposture.V1.CustomConstraint,
    json_name: "customConstraint",
    deprecated: false

  field :policy_rules, 2,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.PolicyRule,
    json_name: "policyRules",
    deprecated: false
end
