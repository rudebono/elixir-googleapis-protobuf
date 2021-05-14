defmodule Google.Cloud.Websecurityscanner.V1.Xss.AttackVector do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ATTACK_VECTOR_UNSPECIFIED
          | :LOCAL_STORAGE
          | :SESSION_STORAGE
          | :WINDOW_NAME
          | :REFERRER
          | :FORM_INPUT
          | :COOKIE
          | :POST_MESSAGE
          | :GET_PARAMETERS
          | :URL_FRAGMENT
          | :HTML_COMMENT
          | :POST_PARAMETERS
          | :PROTOCOL
          | :STORED_XSS
          | :SAME_ORIGIN
          | :USER_CONTROLLABLE_URL

  field :ATTACK_VECTOR_UNSPECIFIED, 0

  field :LOCAL_STORAGE, 1

  field :SESSION_STORAGE, 2

  field :WINDOW_NAME, 3

  field :REFERRER, 4

  field :FORM_INPUT, 5

  field :COOKIE, 6

  field :POST_MESSAGE, 7

  field :GET_PARAMETERS, 8

  field :URL_FRAGMENT, 9

  field :HTML_COMMENT, 10

  field :POST_PARAMETERS, 11

  field :PROTOCOL, 12

  field :STORED_XSS, 13

  field :SAME_ORIGIN, 14

  field :USER_CONTROLLABLE_URL, 15
end

defmodule Google.Cloud.Websecurityscanner.V1.Form do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action_uri: String.t(),
          fields: [String.t()]
        }

  defstruct [:action_uri, :fields]

  field :action_uri, 1, type: :string
  field :fields, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.OutdatedLibrary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          library_name: String.t(),
          version: String.t(),
          learn_more_urls: [String.t()]
        }

  defstruct [:library_name, :version, :learn_more_urls]

  field :library_name, 1, type: :string
  field :version, 2, type: :string
  field :learn_more_urls, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.ViolatingResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content_type: String.t(),
          resource_url: String.t()
        }

  defstruct [:content_type, :resource_url]

  field :content_type, 1, type: :string
  field :resource_url, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.VulnerableParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_names: [String.t()]
        }

  defstruct [:parameter_names]

  field :parameter_names, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.VulnerableHeaders.Header do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }

  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Websecurityscanner.V1.VulnerableHeaders do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headers: [Google.Cloud.Websecurityscanner.V1.VulnerableHeaders.Header.t()],
          missing_headers: [Google.Cloud.Websecurityscanner.V1.VulnerableHeaders.Header.t()]
        }

  defstruct [:headers, :missing_headers]

  field :headers, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.VulnerableHeaders.Header

  field :missing_headers, 2,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1.VulnerableHeaders.Header
end

defmodule Google.Cloud.Websecurityscanner.V1.Xss do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stack_traces: [String.t()],
          error_message: String.t(),
          attack_vector: Google.Cloud.Websecurityscanner.V1.Xss.AttackVector.t(),
          stored_xss_seeding_url: String.t()
        }

  defstruct [:stack_traces, :error_message, :attack_vector, :stored_xss_seeding_url]

  field :stack_traces, 1, repeated: true, type: :string
  field :error_message, 2, type: :string
  field :attack_vector, 3, type: Google.Cloud.Websecurityscanner.V1.Xss.AttackVector, enum: true
  field :stored_xss_seeding_url, 4, type: :string
end
