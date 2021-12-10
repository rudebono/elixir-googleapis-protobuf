defmodule Google.Cloud.Websecurityscanner.V1alpha.OutdatedLibrary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          library_name: String.t(),
          version: String.t(),
          learn_more_urls: [String.t()]
        }

  defstruct library_name: "",
            version: "",
            learn_more_urls: []

  field :library_name, 1, type: :string, json_name: "libraryName"
  field :version, 2, type: :string
  field :learn_more_urls, 3, repeated: true, type: :string, json_name: "learnMoreUrls"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.ViolatingResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content_type: String.t(),
          resource_url: String.t()
        }

  defstruct content_type: "",
            resource_url: ""

  field :content_type, 1, type: :string, json_name: "contentType"
  field :resource_url, 2, type: :string, json_name: "resourceUrl"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.VulnerableParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_names: [String.t()]
        }

  defstruct parameter_names: []

  field :parameter_names, 1, repeated: true, type: :string, json_name: "parameterNames"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.VulnerableHeaders.Header do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }

  defstruct name: "",
            value: ""

  field :name, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.VulnerableHeaders do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          headers: [Google.Cloud.Websecurityscanner.V1alpha.VulnerableHeaders.Header.t()],
          missing_headers: [Google.Cloud.Websecurityscanner.V1alpha.VulnerableHeaders.Header.t()]
        }

  defstruct headers: [],
            missing_headers: []

  field :headers, 1,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1alpha.VulnerableHeaders.Header

  field :missing_headers, 2,
    repeated: true,
    type: Google.Cloud.Websecurityscanner.V1alpha.VulnerableHeaders.Header,
    json_name: "missingHeaders"
end
defmodule Google.Cloud.Websecurityscanner.V1alpha.Xss do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stack_traces: [String.t()],
          error_message: String.t()
        }

  defstruct stack_traces: [],
            error_message: ""

  field :stack_traces, 1, repeated: true, type: :string, json_name: "stackTraces"
  field :error_message, 2, type: :string, json_name: "errorMessage"
end
