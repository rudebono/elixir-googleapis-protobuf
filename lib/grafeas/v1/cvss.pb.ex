defmodule Grafeas.V1.CVSSv3.AttackVector do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ATTACK_VECTOR_UNSPECIFIED, 0
  field :ATTACK_VECTOR_NETWORK, 1
  field :ATTACK_VECTOR_ADJACENT, 2
  field :ATTACK_VECTOR_LOCAL, 3
  field :ATTACK_VECTOR_PHYSICAL, 4
end
defmodule Grafeas.V1.CVSSv3.AttackComplexity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ATTACK_COMPLEXITY_UNSPECIFIED, 0
  field :ATTACK_COMPLEXITY_LOW, 1
  field :ATTACK_COMPLEXITY_HIGH, 2
end
defmodule Grafeas.V1.CVSSv3.PrivilegesRequired do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :PRIVILEGES_REQUIRED_UNSPECIFIED, 0
  field :PRIVILEGES_REQUIRED_NONE, 1
  field :PRIVILEGES_REQUIRED_LOW, 2
  field :PRIVILEGES_REQUIRED_HIGH, 3
end
defmodule Grafeas.V1.CVSSv3.UserInteraction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :USER_INTERACTION_UNSPECIFIED, 0
  field :USER_INTERACTION_NONE, 1
  field :USER_INTERACTION_REQUIRED, 2
end
defmodule Grafeas.V1.CVSSv3.Scope do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SCOPE_UNSPECIFIED, 0
  field :SCOPE_UNCHANGED, 1
  field :SCOPE_CHANGED, 2
end
defmodule Grafeas.V1.CVSSv3.Impact do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :IMPACT_UNSPECIFIED, 0
  field :IMPACT_HIGH, 1
  field :IMPACT_LOW, 2
  field :IMPACT_NONE, 3
end
defmodule Grafeas.V1.CVSS.AttackVector do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ATTACK_VECTOR_UNSPECIFIED, 0
  field :ATTACK_VECTOR_NETWORK, 1
  field :ATTACK_VECTOR_ADJACENT, 2
  field :ATTACK_VECTOR_LOCAL, 3
  field :ATTACK_VECTOR_PHYSICAL, 4
end
defmodule Grafeas.V1.CVSS.AttackComplexity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ATTACK_COMPLEXITY_UNSPECIFIED, 0
  field :ATTACK_COMPLEXITY_LOW, 1
  field :ATTACK_COMPLEXITY_HIGH, 2
end
defmodule Grafeas.V1.CVSS.Authentication do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :AUTHENTICATION_UNSPECIFIED, 0
  field :AUTHENTICATION_MULTIPLE, 1
  field :AUTHENTICATION_SINGLE, 2
  field :AUTHENTICATION_NONE, 3
end
defmodule Grafeas.V1.CVSS.PrivilegesRequired do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :PRIVILEGES_REQUIRED_UNSPECIFIED, 0
  field :PRIVILEGES_REQUIRED_NONE, 1
  field :PRIVILEGES_REQUIRED_LOW, 2
  field :PRIVILEGES_REQUIRED_HIGH, 3
end
defmodule Grafeas.V1.CVSS.UserInteraction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :USER_INTERACTION_UNSPECIFIED, 0
  field :USER_INTERACTION_NONE, 1
  field :USER_INTERACTION_REQUIRED, 2
end
defmodule Grafeas.V1.CVSS.Scope do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SCOPE_UNSPECIFIED, 0
  field :SCOPE_UNCHANGED, 1
  field :SCOPE_CHANGED, 2
end
defmodule Grafeas.V1.CVSS.Impact do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :IMPACT_UNSPECIFIED, 0
  field :IMPACT_HIGH, 1
  field :IMPACT_LOW, 2
  field :IMPACT_NONE, 3
end
defmodule Grafeas.V1.CVSSv3 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :base_score, 1, type: :float, json_name: "baseScore"
  field :exploitability_score, 2, type: :float, json_name: "exploitabilityScore"
  field :impact_score, 3, type: :float, json_name: "impactScore"

  field :attack_vector, 5,
    type: Grafeas.V1.CVSSv3.AttackVector,
    json_name: "attackVector",
    enum: true

  field :attack_complexity, 6,
    type: Grafeas.V1.CVSSv3.AttackComplexity,
    json_name: "attackComplexity",
    enum: true

  field :privileges_required, 7,
    type: Grafeas.V1.CVSSv3.PrivilegesRequired,
    json_name: "privilegesRequired",
    enum: true

  field :user_interaction, 8,
    type: Grafeas.V1.CVSSv3.UserInteraction,
    json_name: "userInteraction",
    enum: true

  field :scope, 9, type: Grafeas.V1.CVSSv3.Scope, enum: true

  field :confidentiality_impact, 10,
    type: Grafeas.V1.CVSSv3.Impact,
    json_name: "confidentialityImpact",
    enum: true

  field :integrity_impact, 11,
    type: Grafeas.V1.CVSSv3.Impact,
    json_name: "integrityImpact",
    enum: true

  field :availability_impact, 12,
    type: Grafeas.V1.CVSSv3.Impact,
    json_name: "availabilityImpact",
    enum: true
end
defmodule Grafeas.V1.CVSS do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :base_score, 1, type: :float, json_name: "baseScore"
  field :exploitability_score, 2, type: :float, json_name: "exploitabilityScore"
  field :impact_score, 3, type: :float, json_name: "impactScore"

  field :attack_vector, 4,
    type: Grafeas.V1.CVSS.AttackVector,
    json_name: "attackVector",
    enum: true

  field :attack_complexity, 5,
    type: Grafeas.V1.CVSS.AttackComplexity,
    json_name: "attackComplexity",
    enum: true

  field :authentication, 6, type: Grafeas.V1.CVSS.Authentication, enum: true

  field :privileges_required, 7,
    type: Grafeas.V1.CVSS.PrivilegesRequired,
    json_name: "privilegesRequired",
    enum: true

  field :user_interaction, 8,
    type: Grafeas.V1.CVSS.UserInteraction,
    json_name: "userInteraction",
    enum: true

  field :scope, 9, type: Grafeas.V1.CVSS.Scope, enum: true

  field :confidentiality_impact, 10,
    type: Grafeas.V1.CVSS.Impact,
    json_name: "confidentialityImpact",
    enum: true

  field :integrity_impact, 11,
    type: Grafeas.V1.CVSS.Impact,
    json_name: "integrityImpact",
    enum: true

  field :availability_impact, 12,
    type: Grafeas.V1.CVSS.Impact,
    json_name: "availabilityImpact",
    enum: true
end
