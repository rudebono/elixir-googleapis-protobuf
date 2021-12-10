defmodule Google.Api.SystemParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rules: [Google.Api.SystemParameterRule.t()]
        }

  defstruct rules: []

  field :rules, 1, repeated: true, type: Google.Api.SystemParameterRule
end
defmodule Google.Api.SystemParameterRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: String.t(),
          parameters: [Google.Api.SystemParameter.t()]
        }

  defstruct selector: "",
            parameters: []

  field :selector, 1, type: :string
  field :parameters, 2, repeated: true, type: Google.Api.SystemParameter
end
defmodule Google.Api.SystemParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          http_header: String.t(),
          url_query_parameter: String.t()
        }

  defstruct name: "",
            http_header: "",
            url_query_parameter: ""

  field :name, 1, type: :string
  field :http_header, 2, type: :string, json_name: "httpHeader"
  field :url_query_parameter, 3, type: :string, json_name: "urlQueryParameter"
end
