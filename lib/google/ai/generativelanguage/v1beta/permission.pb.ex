defmodule Google.Ai.Generativelanguage.V1beta.Permission.GranteeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :GRANTEE_TYPE_UNSPECIFIED, 0
  field :USER, 1
  field :GROUP, 2
  field :EVERYONE, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.Permission.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :OWNER, 1
  field :WRITER, 2
  field :READER, 3
end

defmodule Google.Ai.Generativelanguage.V1beta.Permission do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :grantee_type, 2,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.Permission.GranteeType,
    json_name: "granteeType",
    enum: true,
    deprecated: false

  field :email_address, 3,
    proto3_optional: true,
    type: :string,
    json_name: "emailAddress",
    deprecated: false

  field :role, 4,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.Permission.Role,
    enum: true,
    deprecated: false
end