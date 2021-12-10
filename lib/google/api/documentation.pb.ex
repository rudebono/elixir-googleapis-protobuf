defmodule Google.Api.Documentation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          summary: String.t(),
          pages: [Google.Api.Page.t()],
          rules: [Google.Api.DocumentationRule.t()],
          documentation_root_url: String.t(),
          service_root_url: String.t(),
          overview: String.t()
        }

  defstruct summary: "",
            pages: [],
            rules: [],
            documentation_root_url: "",
            service_root_url: "",
            overview: ""

  field :summary, 1, type: :string
  field :pages, 5, repeated: true, type: Google.Api.Page
  field :rules, 3, repeated: true, type: Google.Api.DocumentationRule
  field :documentation_root_url, 4, type: :string, json_name: "documentationRootUrl"
  field :service_root_url, 6, type: :string, json_name: "serviceRootUrl"
  field :overview, 2, type: :string
end
defmodule Google.Api.DocumentationRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selector: String.t(),
          description: String.t(),
          deprecation_description: String.t()
        }

  defstruct selector: "",
            description: "",
            deprecation_description: ""

  field :selector, 1, type: :string
  field :description, 2, type: :string
  field :deprecation_description, 3, type: :string, json_name: "deprecationDescription"
end
defmodule Google.Api.Page do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          content: String.t(),
          subpages: [Google.Api.Page.t()]
        }

  defstruct name: "",
            content: "",
            subpages: []

  field :name, 1, type: :string
  field :content, 2, type: :string
  field :subpages, 3, repeated: true, type: Google.Api.Page
end
