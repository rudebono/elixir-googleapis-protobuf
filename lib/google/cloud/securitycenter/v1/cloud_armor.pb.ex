defmodule Google.Cloud.Securitycenter.V1.CloudArmor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :security_policy, 1,
    type: Google.Cloud.Securitycenter.V1.SecurityPolicy,
    json_name: "securityPolicy"

  field :requests, 2, type: Google.Cloud.Securitycenter.V1.Requests

  field :adaptive_protection, 3,
    type: Google.Cloud.Securitycenter.V1.AdaptiveProtection,
    json_name: "adaptiveProtection"

  field :attack, 4, type: Google.Cloud.Securitycenter.V1.Attack
  field :threat_vector, 5, type: :string, json_name: "threatVector"
  field :duration, 6, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Securitycenter.V1.SecurityPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :preview, 3, type: :bool
end

defmodule Google.Cloud.Securitycenter.V1.Requests do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ratio, 1, type: :double
  field :short_term_allowed, 2, type: :int32, json_name: "shortTermAllowed"
  field :long_term_allowed, 3, type: :int32, json_name: "longTermAllowed"
  field :long_term_denied, 4, type: :int32, json_name: "longTermDenied"
end

defmodule Google.Cloud.Securitycenter.V1.AdaptiveProtection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :confidence, 1, type: :double
end

defmodule Google.Cloud.Securitycenter.V1.Attack do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :volume_pps, 1, type: :int32, json_name: "volumePps"
  field :volume_bps, 2, type: :int32, json_name: "volumeBps"
  field :classification, 3, type: :string
end