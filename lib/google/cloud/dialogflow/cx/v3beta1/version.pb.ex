defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Version.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :SUCCEEDED, 2

  field :FAILED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateVersionOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t()
        }

  defstruct [:version]

  field :version, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          nlu_settings: Google.Cloud.Dialogflow.Cx.V3beta1.NluSettings.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Dialogflow.Cx.V3beta1.Version.State.t()
        }

  defstruct [:name, :display_name, :description, :nlu_settings, :create_time, :state]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string
  field :nlu_settings, 4, type: Google.Cloud.Dialogflow.Cx.V3beta1.NluSettings
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :state, 6, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version.State, enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsRequest do
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

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          versions: [Google.Cloud.Dialogflow.Cx.V3beta1.Version.t()],
          next_page_token: String.t()
        }

  defstruct [:versions, :next_page_token]

  field :versions, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          version: Google.Cloud.Dialogflow.Cx.V3beta1.Version.t() | nil
        }

  defstruct [:parent, :version]

  field :parent, 1, type: :string
  field :version, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: Google.Cloud.Dialogflow.Cx.V3beta1.Version.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:version, :update_mask]

  field :version, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LoadVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          allow_override_agent_resources: boolean
        }

  defstruct [:name, :allow_override_agent_resources]

  field :name, 1, type: :string
  field :allow_override_agent_resources, 2, type: :bool
end
