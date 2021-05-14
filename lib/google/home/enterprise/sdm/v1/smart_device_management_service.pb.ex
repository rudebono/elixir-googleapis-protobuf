defmodule Google.Home.Enterprise.Sdm.V1.GetDeviceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListDevicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListDevicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          devices: [Google.Home.Enterprise.Sdm.V1.Device.t()],
          next_page_token: String.t()
        }

  defstruct [:devices, :next_page_token]

  field :devices, 1, repeated: true, type: Google.Home.Enterprise.Sdm.V1.Device
  field :next_page_token, 2, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ExecuteDeviceCommandRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          command: String.t(),
          params: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:name, :command, :params]

  field :name, 1, type: :string
  field :command, 2, type: :string
  field :params, 3, type: Google.Protobuf.Struct
end

defmodule Google.Home.Enterprise.Sdm.V1.ExecuteDeviceCommandResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:results]

  field :results, 1, type: Google.Protobuf.Struct
end

defmodule Google.Home.Enterprise.Sdm.V1.GetStructureRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListStructuresRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListStructuresResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          structures: [Google.Home.Enterprise.Sdm.V1.Structure.t()],
          next_page_token: String.t()
        }

  defstruct [:structures, :next_page_token]

  field :structures, 1, repeated: true, type: Google.Home.Enterprise.Sdm.V1.Structure
  field :next_page_token, 2, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.GetRoomRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListRoomsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Home.Enterprise.Sdm.V1.ListRoomsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rooms: [Google.Home.Enterprise.Sdm.V1.Room.t()],
          next_page_token: String.t()
        }

  defstruct [:rooms, :next_page_token]

  field :rooms, 1, repeated: true, type: Google.Home.Enterprise.Sdm.V1.Room
  field :next_page_token, 2, type: :string
end
