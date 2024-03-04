defmodule Google.Cloud.Apphub.V1.Criticality.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :MISSION_CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end

defmodule Google.Cloud.Apphub.V1.Environment.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PRODUCTION, 1
  field :STAGING, 2
  field :TEST, 3
  field :DEVELOPMENT, 4
end

defmodule Google.Cloud.Apphub.V1.Attributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :criticality, 1, type: Google.Cloud.Apphub.V1.Criticality, deprecated: false
  field :environment, 2, type: Google.Cloud.Apphub.V1.Environment, deprecated: false

  field :developer_owners, 3,
    repeated: true,
    type: Google.Cloud.Apphub.V1.ContactInfo,
    json_name: "developerOwners",
    deprecated: false

  field :operator_owners, 4,
    repeated: true,
    type: Google.Cloud.Apphub.V1.ContactInfo,
    json_name: "operatorOwners",
    deprecated: false

  field :business_owners, 5,
    repeated: true,
    type: Google.Cloud.Apphub.V1.ContactInfo,
    json_name: "businessOwners",
    deprecated: false
end

defmodule Google.Cloud.Apphub.V1.Criticality do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 3, type: Google.Cloud.Apphub.V1.Criticality.Type, enum: true, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.Environment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 2, type: Google.Cloud.Apphub.V1.Environment.Type, enum: true, deprecated: false
end

defmodule Google.Cloud.Apphub.V1.ContactInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :email, 2, type: :string, deprecated: false
end