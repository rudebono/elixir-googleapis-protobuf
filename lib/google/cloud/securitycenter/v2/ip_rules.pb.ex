defmodule Google.Cloud.Securitycenter.V2.IpRules.Direction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DIRECTION_UNSPECIFIED, 0
  field :INGRESS, 1
  field :EGRESS, 2
end

defmodule Google.Cloud.Securitycenter.V2.IpRules do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :rules, 0

  field :direction, 1, type: Google.Cloud.Securitycenter.V2.IpRules.Direction, enum: true
  field :allowed, 2, type: Google.Cloud.Securitycenter.V2.Allowed, oneof: 0
  field :denied, 3, type: Google.Cloud.Securitycenter.V2.Denied, oneof: 0
  field :source_ip_ranges, 4, repeated: true, type: :string, json_name: "sourceIpRanges"
  field :destination_ip_ranges, 5, repeated: true, type: :string, json_name: "destinationIpRanges"
  field :exposed_services, 6, repeated: true, type: :string, json_name: "exposedServices"
end

defmodule Google.Cloud.Securitycenter.V2.IpRule.PortRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :min, 1, type: :int64
  field :max, 2, type: :int64
end

defmodule Google.Cloud.Securitycenter.V2.IpRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :protocol, 1, type: :string

  field :port_ranges, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.IpRule.PortRange,
    json_name: "portRanges",
    deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.Allowed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ip_rules, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.IpRule,
    json_name: "ipRules",
    deprecated: false
end

defmodule Google.Cloud.Securitycenter.V2.Denied do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ip_rules, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.IpRule,
    json_name: "ipRules",
    deprecated: false
end
