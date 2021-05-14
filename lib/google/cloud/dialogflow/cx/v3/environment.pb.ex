defmodule Google.Cloud.Dialogflow.Cx.V3.Environment.VersionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t()
        }

  defstruct [:version]

  field :version, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          version_configs: [Google.Cloud.Dialogflow.Cx.V3.Environment.VersionConfig.t()],
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :display_name, :description, :version_configs, :update_time]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string

  field :version_configs, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.Environment.VersionConfig

  field :update_time, 5, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListEnvironmentsRequest do
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

defmodule Google.Cloud.Dialogflow.Cx.V3.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environments: [Google.Cloud.Dialogflow.Cx.V3.Environment.t()],
          next_page_token: String.t()
        }

  defstruct [:environments, :next_page_token]

  field :environments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Environment
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          environment: Google.Cloud.Dialogflow.Cx.V3.Environment.t() | nil
        }

  defstruct [:parent, :environment]

  field :parent, 1, type: :string
  field :environment, 2, type: Google.Cloud.Dialogflow.Cx.V3.Environment
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: Google.Cloud.Dialogflow.Cx.V3.Environment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:environment, :update_mask]

  field :environment, 1, type: Google.Cloud.Dialogflow.Cx.V3.Environment
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.LookupEnvironmentHistoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.LookupEnvironmentHistoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environments: [Google.Cloud.Dialogflow.Cx.V3.Environment.t()],
          next_page_token: String.t()
        }

  defstruct [:environments, :next_page_token]

  field :environments, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Environment
  field :next_page_token, 2, type: :string
end
