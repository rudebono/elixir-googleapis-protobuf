defmodule Google.Identity.Accesscontextmanager.V1.BasicLevel.ConditionCombiningFunction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AND | :OR

  field :AND, 0

  field :OR, 1
end

defmodule Google.Identity.Accesscontextmanager.V1.AccessLevel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          level: {atom, any},
          name: String.t(),
          title: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:level, :name, :title, :description, :create_time, :update_time]

  oneof :level, 0
  field :name, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :basic, 4, type: Google.Identity.Accesscontextmanager.V1.BasicLevel, oneof: 0
  field :custom, 5, type: Google.Identity.Accesscontextmanager.V1.CustomLevel, oneof: 0
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :update_time, 7, type: Google.Protobuf.Timestamp
end

defmodule Google.Identity.Accesscontextmanager.V1.BasicLevel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conditions: [Google.Identity.Accesscontextmanager.V1.Condition.t()],
          combining_function:
            Google.Identity.Accesscontextmanager.V1.BasicLevel.ConditionCombiningFunction.t()
        }

  defstruct [:conditions, :combining_function]

  field :conditions, 1, repeated: true, type: Google.Identity.Accesscontextmanager.V1.Condition

  field :combining_function, 2,
    type: Google.Identity.Accesscontextmanager.V1.BasicLevel.ConditionCombiningFunction,
    enum: true
end

defmodule Google.Identity.Accesscontextmanager.V1.Condition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_subnetworks: [String.t()],
          device_policy: Google.Identity.Accesscontextmanager.V1.DevicePolicy.t() | nil,
          required_access_levels: [String.t()],
          negate: boolean,
          members: [String.t()],
          regions: [String.t()]
        }

  defstruct [
    :ip_subnetworks,
    :device_policy,
    :required_access_levels,
    :negate,
    :members,
    :regions
  ]

  field :ip_subnetworks, 1, repeated: true, type: :string
  field :device_policy, 2, type: Google.Identity.Accesscontextmanager.V1.DevicePolicy
  field :required_access_levels, 3, repeated: true, type: :string
  field :negate, 5, type: :bool
  field :members, 6, repeated: true, type: :string
  field :regions, 7, repeated: true, type: :string
end

defmodule Google.Identity.Accesscontextmanager.V1.CustomLevel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expr: Google.Type.Expr.t() | nil
        }

  defstruct [:expr]

  field :expr, 1, type: Google.Type.Expr
end

defmodule Google.Identity.Accesscontextmanager.V1.DevicePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          require_screenlock: boolean,
          allowed_encryption_statuses: [
            [Google.Identity.Accesscontextmanager.Type.DeviceEncryptionStatus.t()]
          ],
          os_constraints: [Google.Identity.Accesscontextmanager.V1.OsConstraint.t()],
          allowed_device_management_levels: [
            [Google.Identity.Accesscontextmanager.Type.DeviceManagementLevel.t()]
          ],
          require_admin_approval: boolean,
          require_corp_owned: boolean
        }

  defstruct [
    :require_screenlock,
    :allowed_encryption_statuses,
    :os_constraints,
    :allowed_device_management_levels,
    :require_admin_approval,
    :require_corp_owned
  ]

  field :require_screenlock, 1, type: :bool

  field :allowed_encryption_statuses, 2,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.Type.DeviceEncryptionStatus,
    enum: true

  field :os_constraints, 3,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.V1.OsConstraint

  field :allowed_device_management_levels, 6,
    repeated: true,
    type: Google.Identity.Accesscontextmanager.Type.DeviceManagementLevel,
    enum: true

  field :require_admin_approval, 7, type: :bool
  field :require_corp_owned, 8, type: :bool
end

defmodule Google.Identity.Accesscontextmanager.V1.OsConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_type: Google.Identity.Accesscontextmanager.Type.OsType.t(),
          minimum_version: String.t(),
          require_verified_chrome_os: boolean
        }

  defstruct [:os_type, :minimum_version, :require_verified_chrome_os]

  field :os_type, 1, type: Google.Identity.Accesscontextmanager.Type.OsType, enum: true
  field :minimum_version, 2, type: :string
  field :require_verified_chrome_os, 3, type: :bool
end
