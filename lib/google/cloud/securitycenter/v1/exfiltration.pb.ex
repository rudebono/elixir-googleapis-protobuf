defmodule Google.Cloud.Securitycenter.V1.Exfiltration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sources, 1, repeated: true, type: Google.Cloud.Securitycenter.V1.ExfilResource
  field :targets, 2, repeated: true, type: Google.Cloud.Securitycenter.V1.ExfilResource
  field :total_exfiltrated_bytes, 3, type: :int64, json_name: "totalExfiltratedBytes"
end

defmodule Google.Cloud.Securitycenter.V1.ExfilResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :components, 2, repeated: true, type: :string
end