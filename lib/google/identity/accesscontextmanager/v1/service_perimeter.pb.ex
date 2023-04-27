defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeter.PerimeterType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PERIMETER_TYPE_REGULAR, 0
  field :PERIMETER_TYPE_BRIDGE, 1
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IdentityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :IDENTITY_TYPE_UNSPECIFIED, 0
  field :ANY_IDENTITY, 1
  field :ANY_USER_ACCOUNT, 2
  field :ANY_SERVICE_ACCOUNT, 3
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :perimeter_type, 6,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter.PerimeterType,
    json_name: "perimeterType",
    enum: true

  field :status, 7, type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig
  field :spec, 8, type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig
  field :use_explicit_dry_run_spec, 9, type: :bool, json_name: "useExplicitDryRunSpec"
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.VpcAccessibleServices do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_restriction, 1, type: :bool, json_name: "enableRestriction"
  field :allowed_services, 2, repeated: true, type: :string, json_name: "allowedServices"
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.MethodSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :kind, 0

  field :method, 1, type: :string, oneof: 0
  field :permission, 2, type: :string, oneof: 0
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.ApiOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName"

  field :method_selectors, 2,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.MethodSelector,
    json_name: "methodSelectors"
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :access_level, 1, type: :string, json_name: "accessLevel", oneof: 0
  field :resource, 2, type: :string, oneof: 0
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressFrom do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sources, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressSource

  field :identities, 2, repeated: true, type: :string

  field :identity_type, 3,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IdentityType,
    json_name: "identityType",
    enum: true
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressTo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operations, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.ApiOperation

  field :resources, 2, repeated: true, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ingress_from, 1,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressFrom,
    json_name: "ingressFrom"

  field :ingress_to, 2,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressTo,
    json_name: "ingressTo"
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressFrom do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :identities, 1, repeated: true, type: :string

  field :identity_type, 2,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IdentityType,
    json_name: "identityType",
    enum: true
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressTo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resources, 1, repeated: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.ApiOperation

  field :external_resources, 3, repeated: true, type: :string, json_name: "externalResources"
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :egress_from, 1,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressFrom,
    json_name: "egressFrom"

  field :egress_to, 2,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressTo,
    json_name: "egressTo"
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resources, 1, repeated: true, type: :string
  field :access_levels, 2, repeated: true, type: :string, json_name: "accessLevels"
  field :restricted_services, 4, repeated: true, type: :string, json_name: "restrictedServices"

  field :vpc_accessible_services, 10,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.VpcAccessibleServices,
    json_name: "vpcAccessibleServices"

  field :ingress_policies, 8,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressPolicy,
    json_name: "ingressPolicies"

  field :egress_policies, 9,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressPolicy,
    json_name: "egressPolicies"
end