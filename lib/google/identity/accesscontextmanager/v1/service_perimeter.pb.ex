defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeter.PerimeterType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PERIMETER_TYPE_REGULAR | :PERIMETER_TYPE_BRIDGE

  field :PERIMETER_TYPE_REGULAR, 0

  field :PERIMETER_TYPE_BRIDGE, 1
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

  defstruct [
    :name,
    :title,
    :description,
    :create_time,
    :update_time,
    :perimeter_type,
    :status,
    :spec,
    :use_explicit_dry_run_spec
  ]

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp

  field :perimeter_type, 6,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter.PerimeterType,
    enum: true

  field :status, 7, type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig
  field :spec, 8, type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig
  field :use_explicit_dry_run_spec, 9, type: :bool
end

defmodule Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.VpcAccessibleServices do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_restriction: boolean,
          allowed_services: [String.t()]
        }

  defstruct [:enable_restriction, :allowed_services]

  field :enable_restriction, 1, type: :bool
  field :allowed_services, 2, repeated: true, type: :string
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
            | nil
        }

  defstruct [:resources, :access_levels, :restricted_services, :vpc_accessible_services]

  field :resources, 1, repeated: true, type: :string
  field :access_levels, 2, repeated: true, type: :string
  field :restricted_services, 4, repeated: true, type: :string

  field :vpc_accessible_services, 10,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeterConfig.VpcAccessibleServices
end
