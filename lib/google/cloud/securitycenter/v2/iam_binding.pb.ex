defmodule Google.Cloud.Securitycenter.V2.IamBinding.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :ADD, 1
  field :REMOVE, 2
end

defmodule Google.Cloud.Securitycenter.V2.IamBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :action, 1, type: Google.Cloud.Securitycenter.V2.IamBinding.Action, enum: true
  field :role, 2, type: :string
  field :member, 3, type: :string
end