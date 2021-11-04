defmodule Grafeas.V1beta1.Vulnerability.CVSSv3.AttackVector do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ATTACK_VECTOR_UNSPECIFIED
          | :ATTACK_VECTOR_NETWORK
          | :ATTACK_VECTOR_ADJACENT
          | :ATTACK_VECTOR_LOCAL
          | :ATTACK_VECTOR_PHYSICAL

  field :ATTACK_VECTOR_UNSPECIFIED, 0
  field :ATTACK_VECTOR_NETWORK, 1
  field :ATTACK_VECTOR_ADJACENT, 2
  field :ATTACK_VECTOR_LOCAL, 3
  field :ATTACK_VECTOR_PHYSICAL, 4
end

defmodule Grafeas.V1beta1.Vulnerability.CVSSv3.AttackComplexity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ATTACK_COMPLEXITY_UNSPECIFIED
          | :ATTACK_COMPLEXITY_LOW
          | :ATTACK_COMPLEXITY_HIGH

  field :ATTACK_COMPLEXITY_UNSPECIFIED, 0
  field :ATTACK_COMPLEXITY_LOW, 1
  field :ATTACK_COMPLEXITY_HIGH, 2
end

defmodule Grafeas.V1beta1.Vulnerability.CVSSv3.PrivilegesRequired do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PRIVILEGES_REQUIRED_UNSPECIFIED
          | :PRIVILEGES_REQUIRED_NONE
          | :PRIVILEGES_REQUIRED_LOW
          | :PRIVILEGES_REQUIRED_HIGH

  field :PRIVILEGES_REQUIRED_UNSPECIFIED, 0
  field :PRIVILEGES_REQUIRED_NONE, 1
  field :PRIVILEGES_REQUIRED_LOW, 2
  field :PRIVILEGES_REQUIRED_HIGH, 3
end

defmodule Grafeas.V1beta1.Vulnerability.CVSSv3.UserInteraction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :USER_INTERACTION_UNSPECIFIED
          | :USER_INTERACTION_NONE
          | :USER_INTERACTION_REQUIRED

  field :USER_INTERACTION_UNSPECIFIED, 0
  field :USER_INTERACTION_NONE, 1
  field :USER_INTERACTION_REQUIRED, 2
end

defmodule Grafeas.V1beta1.Vulnerability.CVSSv3.Scope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SCOPE_UNSPECIFIED | :SCOPE_UNCHANGED | :SCOPE_CHANGED

  field :SCOPE_UNSPECIFIED, 0
  field :SCOPE_UNCHANGED, 1
  field :SCOPE_CHANGED, 2
end

defmodule Grafeas.V1beta1.Vulnerability.CVSSv3.Impact do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :IMPACT_UNSPECIFIED | :IMPACT_HIGH | :IMPACT_LOW | :IMPACT_NONE

  field :IMPACT_UNSPECIFIED, 0
  field :IMPACT_HIGH, 1
  field :IMPACT_LOW, 2
  field :IMPACT_NONE, 3
end

defmodule Grafeas.V1beta1.Vulnerability.CVSSv3 do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_score: float | :infinity | :negative_infinity | :nan,
          exploitability_score: float | :infinity | :negative_infinity | :nan,
          impact_score: float | :infinity | :negative_infinity | :nan,
          attack_vector: Grafeas.V1beta1.Vulnerability.CVSSv3.AttackVector.t(),
          attack_complexity: Grafeas.V1beta1.Vulnerability.CVSSv3.AttackComplexity.t(),
          privileges_required: Grafeas.V1beta1.Vulnerability.CVSSv3.PrivilegesRequired.t(),
          user_interaction: Grafeas.V1beta1.Vulnerability.CVSSv3.UserInteraction.t(),
          scope: Grafeas.V1beta1.Vulnerability.CVSSv3.Scope.t(),
          confidentiality_impact: Grafeas.V1beta1.Vulnerability.CVSSv3.Impact.t(),
          integrity_impact: Grafeas.V1beta1.Vulnerability.CVSSv3.Impact.t(),
          availability_impact: Grafeas.V1beta1.Vulnerability.CVSSv3.Impact.t()
        }

  defstruct [
    :base_score,
    :exploitability_score,
    :impact_score,
    :attack_vector,
    :attack_complexity,
    :privileges_required,
    :user_interaction,
    :scope,
    :confidentiality_impact,
    :integrity_impact,
    :availability_impact
  ]

  field :base_score, 1, type: :float, json_name: "baseScore"
  field :exploitability_score, 2, type: :float, json_name: "exploitabilityScore"
  field :impact_score, 3, type: :float, json_name: "impactScore"

  field :attack_vector, 5,
    type: Grafeas.V1beta1.Vulnerability.CVSSv3.AttackVector,
    enum: true,
    json_name: "attackVector"

  field :attack_complexity, 6,
    type: Grafeas.V1beta1.Vulnerability.CVSSv3.AttackComplexity,
    enum: true,
    json_name: "attackComplexity"

  field :privileges_required, 7,
    type: Grafeas.V1beta1.Vulnerability.CVSSv3.PrivilegesRequired,
    enum: true,
    json_name: "privilegesRequired"

  field :user_interaction, 8,
    type: Grafeas.V1beta1.Vulnerability.CVSSv3.UserInteraction,
    enum: true,
    json_name: "userInteraction"

  field :scope, 9, type: Grafeas.V1beta1.Vulnerability.CVSSv3.Scope, enum: true

  field :confidentiality_impact, 10,
    type: Grafeas.V1beta1.Vulnerability.CVSSv3.Impact,
    enum: true,
    json_name: "confidentialityImpact"

  field :integrity_impact, 11,
    type: Grafeas.V1beta1.Vulnerability.CVSSv3.Impact,
    enum: true,
    json_name: "integrityImpact"

  field :availability_impact, 12,
    type: Grafeas.V1beta1.Vulnerability.CVSSv3.Impact,
    enum: true,
    json_name: "availabilityImpact"

  def transform_module(), do: nil
end
