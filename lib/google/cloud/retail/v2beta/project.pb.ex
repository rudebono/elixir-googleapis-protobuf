defmodule Google.Cloud.Retail.V2beta.AlertConfig.AlertPolicy.EnrollStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENROLL_STATUS_UNSPECIFIED, 0
  field :ENROLLED, 1
  field :DECLINED, 2
end

defmodule Google.Cloud.Retail.V2beta.AlertConfig.AlertPolicy.Recipient do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :email_address, 1, type: :string, json_name: "emailAddress"
end

defmodule Google.Cloud.Retail.V2beta.AlertConfig.AlertPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :alert_group, 1, type: :string, json_name: "alertGroup"

  field :enroll_status, 2,
    type: Google.Cloud.Retail.V2beta.AlertConfig.AlertPolicy.EnrollStatus,
    json_name: "enrollStatus",
    enum: true

  field :recipients, 3,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.AlertConfig.AlertPolicy.Recipient
end

defmodule Google.Cloud.Retail.V2beta.AlertConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :alert_policies, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.AlertConfig.AlertPolicy,
    json_name: "alertPolicies"
end