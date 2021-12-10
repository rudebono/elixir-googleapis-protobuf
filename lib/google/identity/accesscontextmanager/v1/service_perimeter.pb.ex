defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeter.PerimeterType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PERIMETER_TYPE_REGULAR | :PERIMETER_TYPE_BRIDGE

  field :PERIMETER_TYPE_REGULAR, 0
  field :PERIMETER_TYPE_BRIDGE, 1
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IdentityType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :IDENTITY_TYPE_UNSPECIFIED
          | :ANY_IDENTITY
          | :ANY_USER_ACCOUNT
          | :ANY_SERVICE_ACCOUNT

  field :IDENTITY_TYPE_UNSPECIFIED, 0
  field :ANY_IDENTITY, 1
  field :ANY_USER_ACCOUNT, 2
  field :ANY_SERVICE_ACCOUNT, 3
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          perimeter_type:
            Google.Identity.Accesscontextmanager.V1.ServicePerimeter.PerimeterType.t(),
          status: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.t() | nil,
          spec: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.t() | nil,
          use_explicit_dry_run_spec: boolean
        }

  defstruct name: "",
            title: "",
            description: "",
            create_time: nil,
            update_time: nil,
            perimeter_type: :PERIMETER_TYPE_REGULAR,
            status: nil,
            spec: nil,
            use_explicit_dry_run_spec: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_restriction: boolean,
          allowed_services: [String.t()]
        }

  defstruct enable_restriction: false,
            allowed_services: []

  field :enable_restriction, 1, type: :bool, json_name: "enableRestriction"
  field :allowed_services, 2, repeated: true, type: :string, json_name: "allowedServices"
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.MethodSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: {:method, String.t()} | {:permission, String.t()}
        }

  defstruct kind: nil

  oneof :kind, 0

  field :method, 1, type: :string, oneof: 0
  field :permission, 2, type: :string, oneof: 0
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.ApiOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          method_selectors: [
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.MethodSelector.t()
          ]
        }

  defstruct service_name: "",
            method_selectors: []

  field :service_name, 1, type: :string, json_name: "serviceName"

  field :method_selectors, 2,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.MethodSelector,
    json_name: "methodSelectors"
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:access_level, String.t()} | {:resource, String.t()}
        }

  defstruct source: nil

  oneof :source, 0

  field :access_level, 1, type: :string, json_name: "accessLevel", oneof: 0
  field :resource, 2, type: :string, oneof: 0
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressTo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [String.t()],
          operations: [
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.ApiOperation.t()
          ]
        }

  defstruct resources: [],
            operations: []

  field :resources, 1, repeated: true, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.ApiOperation
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressFrom do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sources: [
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressSource.t()
          ],
          identities: [String.t()],
          identity_type:
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IdentityType.t()
        }

  defstruct sources: [],
            identities: [],
            identity_type: :IDENTITY_TYPE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operations: [
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.ApiOperation.t()
          ],
          resources: [String.t()]
        }

  defstruct operations: [],
            resources: []

  field :operations, 1,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.ApiOperation

  field :resources, 2, repeated: true, type: :string
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingress_from:
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressFrom.t() | nil,
          ingress_to:
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressTo.t() | nil
        }

  defstruct ingress_from: nil,
            ingress_to: nil

  field :ingress_from, 1,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressFrom,
    json_name: "ingressFrom"

  field :ingress_to, 2,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressTo,
    json_name: "ingressTo"
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          egress_from:
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressFrom.t() | nil,
          egress_to:
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressTo.t() | nil
        }

  defstruct egress_from: nil,
            egress_to: nil

  field :egress_from, 1,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressFrom,
    json_name: "egressFrom"

  field :egress_to, 2,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressTo,
    json_name: "egressTo"
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressFrom do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identities: [String.t()],
          identity_type:
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IdentityType.t()
        }

  defstruct identities: [],
            identity_type: :IDENTITY_TYPE_UNSPECIFIED

  field :identities, 1, repeated: true, type: :string

  field :identity_type, 2,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IdentityType,
    json_name: "identityType",
    enum: true
end
defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [String.t()],
          access_levels: [String.t()],
          restricted_services: [String.t()],
          vpc_accessible_services:
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.VpcAccessibleServices.t()
            | nil,
          ingress_policies: [
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.IngressPolicy.t()
          ],
          egress_policies: [
            Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.EgressPolicy.t()
          ]
        }

  defstruct resources: [],
            access_levels: [],
            restricted_services: [],
            vpc_accessible_services: nil,
            ingress_policies: [],
            egress_policies: []

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
