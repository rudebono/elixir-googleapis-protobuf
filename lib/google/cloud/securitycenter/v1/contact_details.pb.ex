defmodule Google.Cloud.Securitycenter.V1.ContactDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contacts, 1, repeated: true, type: Google.Cloud.Securitycenter.V1.Contact
end

defmodule Google.Cloud.Securitycenter.V1.Contact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :email, 1, type: :string
end
